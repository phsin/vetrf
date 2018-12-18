#!/usr/bin/perl

#=================================================================================================================
# Скрипт для удаления ненужной информации из внешних отчетов.
# Отчёты должны быть в human-readable формате, т.е. разобранные gcomp версией  не ниже 2.0.10, без ключа --no-parse-dialogs.
#=================================================================================================================
#Автор - Диркс Алексей mailto:adirks@ngs.ru
#
#Эта программа является свободным программным обеспечением. Вы можете
#распространять и (или) модифицировать ее на условиях GNU Generic Public License.
#
#Данная программа распространяется с надеждой оказаться полезной, но
#БЕЗ КАКИХ-ЛИБО ГАРАНТИЙ, в том числе без гарантий пригодности для продажи или
#каких-либо других практических целей.
#
#С полным текстом лицензии на английском языке можно ознакомитсья по адресу
#http://www.gnu.org/licenses/gpl.txt или в файле
#gnugpl.eng.txt
#
#С русским переводом лицензии можно ознакомиться по адресу
#http://gnu.org.ru/gpl.html или в файле
#gnugpl.rus.txt
#
#Вы должны получить копию GNU Generic Public License вместе с копией этой программы.
#Если это не так - сообщите об этом авторам (mailto:adirks@ngs.ru , mailto:fe@alterplast.ru) или напишите
#Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA

use locale;
use strict "vars";
use vars qw/ $usage
	$root_dir $quiet
	$mdp_begin /;

$usage = <<EOF
Назначение: для внешних отчетов удаляет ненужную информацию о метаданных, тем самым существенно сокращая объём хранимой информации.

Использование:
   perl CompressMetadata.pl [параметры]
   
Параметры могут быть:
   -h        - этот текст
   -d, --dir <dir>  - каталог, откуда начнётся поиск декомпилированных внешних отчетов. По умолчанию поиск начинается с
               текущего каталога.
	-q, --quiet		 - молчаливый режим			
EOF
;
	
#default values
$root_dir = ".";
$quiet = "";

#command line args processing
use Getopt::Long;
GetOptions(
	"dir|d=s" => \$root_dir,
	"quiet|q" => \$quiet,
) 
	or die w2d($usage);
	
$mdp_begin = <<EOF
Main Metadata Stream: 
{
	MainDataContDef: 
	{
		Версия: 10009
	}
	Описание задачи: 
	{
		{
		}
	}
EOF
;

#print w2d("ROOT: $root_dir\n");
#traverse through dirs and do work
use File::Find; #package для рекурсивного обхода каталогов
find(\&TruncateMetadata, $root_dir);

sub TruncateMetadata
{
	my $name = $_; #File::Find складывает в $_ имя текущего файла
	return unless $name =~ m/^(.*)(\Структура.mdp)$/i; #нам нужны только коаталоги, где есть метаданные
	open IDS, "< ОбъектыМетаданных.txt" or return;
	close IDS;
	
	my $line;
	my @FullTypes;

	#Соберём все ссылки на метаданные из диалога
	$name = "Форма.frm";
	open DLG, "< $name" or return; #нет формы - нечего обрабатывать
	foreach $line (<DLG>)
	{
		#Агрегатный тип: Документ.АвансовыйОтчет
		if( $line =~ m/^\s*Агрегатный тип:\s*(.*)$/ )
		{
			push(@FullTypes, $1) if InArr($1, @FullTypes) == 0;
		}
	}
	close DLG;
	
	print w2d("Compressing MD: $File::Find::dir\n") unless $quiet;
	
	##################################################################################
	#Формирование файла  <Структура.mdp>
	##################################################################################
	@FullTypes = sort {str_cmp($a, $b)} @FullTypes;
	my @Types;
	my ($full_type, $type, $kind);
	my $buh_params = BuhParams(\@FullTypes);
	open MDP_NEW, "> Структура.mdp" or print w2d("Can't move <Структура.new.mdp> to <Структура.mdp>: $!\n");
	printf MDP_NEW "%s\n", $mdp_begin;
	
	#проходимся по всем типам, и вставляем соответствующие разделы в поток метаданных
	foreach $full_type (@FullTypes)
	{
		$full_type =~ m/(\w+)\.(\w+)/ or next;
		$type = $1;
		$kind = $2;
		
		next if $type =~ m/Бухгалтерия/;
		next unless $kind;
		
		if( $type =~ m/Перечисление/ ) {$type = "Перечисления";}
		elsif( $type =~ m/Документ/ ) {$type = "Документы";}
		elsif( $type =~ m/Справочник/ ) {$type = "Справочники";}
		
		if( InArr($type, @Types) == 0 )
		{
			printf MDP_NEW "\t}\n" if $#Types >= 0;
			push(@Types, $type);
			printf MDP_NEW "\t$type:\n\t{\n";
		}
		
		if( InArr($full_type, @Types) == 0 )
		{
			printf MDP_NEW "\t\t$kind:\n\t\t{\n\t\t}\n\n";
			push @Types, $full_type;
		}
	}
	
	#завершающие скобки
	printf MDP_NEW "\t}\n" if $#Types >= 0;
	# ... и параметры бухгалтерии
	printf MDP_NEW "$buh_params";
	#printf MDP_NEW "}\n";
	close MDP_NEW;

	##################################################################################
	#Формирование файла  <ОбъектыМетаданных.txt>
	##################################################################################
	
	########    иденификаторы, которые надо сохранить в любом случае   ####################################
	push(@FullTypes, "Задача");
	push(@FullTypes, "Справочник.Валюты");
	#################################################################################
	my @IDSused;
	my $nIDsSkipped = 0;
	
	open IDS, "< ОбъектыМетаданных.txt" or return;
	foreach $line (<IDS>)
	{
		$line =~ s/[\r\n]//g; #уберём завершающие \n и \r, если они там есть
		$line =~ m/^\s*(\d+)\s+(([^\.\s]+)([^\s]*))\s*$/;
		my $full_type_file = $2;
		
		my $ID_used = 0;
		if( $3 eq "Бухгалтерия" )
		{
			$ID_used = 1;
		}
		else
		{
			foreach $full_type (@FullTypes)
			{
				if( $full_type eq $full_type_file )
				{
					$ID_used = 1;
					last;
				}
			}
		}
		
		if( $ID_used == 1 )
		{
			push( @IDSused, $line );
		}
		else
		{
			$nIDsSkipped++;
		}
	}
	close IDS;
	
	#return if $nIDsSkipped == 0; #каталог уже обработан
	
	@IDSused = sort @IDSused;
	
	open IDS_NEW, "> ОбъектыМетаданных.txt" or print w2d("Can't move <ОбъектыМетаданных.new.txt> to <ОбъектыМетаданных.txt>: $!\n");
	foreach $line (@IDSused)
	{
		printf IDS_NEW "$line\n";
	}
	close IDS_NEW;
}

sub BuhParams
{
	my $Types = shift;
	my $line;
	my $buh_params = "";
	my $started = 0;
	
	open MDP, "< Структура.mdp" or return "";
	foreach $line (<MDP>)
	{
		$started = 1 if $line =~ m/^\s*Параметры бухгалтерии:\s*$/;
		if( $started )
		{
			$buh_params .= $line;
			if( $line =~ m/^.*\s+Справочник\.([^\s]+)\s*$/ )
			{
				push @$Types, "Справочник.$1";
			}
		}
	}
	close MDP;
	
	$buh_params = "}\n" if length $buh_params == 0;
	
	return $buh_params;
}

sub InArr
{
	my $what = shift;
	my @arr = @_;
	my $val;
	foreach $val (@arr)
	{
		return 1 if $val eq $what;
	}
	return 0;
}

sub str_cmp($$)
{
	my $left = shift;
	my $right = shift;
	if( $left le $right ) {return -1;}
	if( $left gt $right ) {return 1;}
	return 0;
}

sub w2d {
	my $win_chars = "\xA8\xB8\xB9\xC0\xC1\xC2\xC3\xC4\xC5\xC6\xC7\xC8\xC9\xCA\xCB\xCC\xCD\xCE\xCF\xD0\xD1\xD2\xD3\xD4\xD5\xD6\xD7\xD8\xD9\xDA\xDB\xDC\xDD\xDE\xDF\xE0\xE1\xE2\xE3\xE4\xE5\xE6\xE7\xE8\xE9\xEA\xEB\xEC\xED\xEE\xEF\xF0\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xFA\xFB\xFC\xFD\xFE\xFF";
	my $dos_chars = "\xF0\xF1\xFC\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8A\x8B\x8C\x8D\x8E\x8F\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9A\x9B\x9C\x9D\x9E\x9F\xA0\xA1\xA2\xA3\xA4\xA5\xA6\xA7\xA8\xA9\xAA\xAB\xAC\xAD\xAE\xAF\xE0\xE1\xE2\xE3\xE4\xE5\xE6\xE7\xE8\xE9\xEA\xEB\xEC\xED\xEE\xEF";
	$_ = shift;
	return $_ if $^O eq "cygwin";
	eval("tr/$win_chars/$dos_chars/");
	return $_;
}
