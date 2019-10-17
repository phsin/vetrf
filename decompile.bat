@echo off

copy Vetis_IN\version.txt Vetis\

cscript decompile_ert.js --ini-file decompile.ini 


perl correct_dlg.pl -d Src\Vetis
perl CompressMetadata.pl -q -d Src\Vetis

git status
gitk

rem Пересоберем ert прямо в репозитории
rem cscript decompile_ert.js --ini-file compile-ert.ini
rem compile.bat

rem pause
