
var fso = new ActiveXObject("Scripting.FileSystemObject");
var wsh = new ActiveXObject("WScript.Shell");

var filename = "gcomp.log";
var file = fso.OpenTextFile(filename, 8, true,-1); //8 = append

var fQuiet = false;


function echo(str)
{
    WScript.Echo(str);
    var now = new Date();
    file.WriteLine(now.toString()+" : "+str);
};

// http://forum.script-coding.com/viewtopic.php?id=1179
//var x=strConv("например", "windows-1251","utf-8");
function strConv(txt, sourceCharset, destCharset)
{
    with(new ActiveXObject('ADODB.Stream'))
    {
        type=2, mode=3, charset=destCharset;
        open();
        writeText(txt);
        position=0, charset=sourceCharset;
        return readText();
    }
}

function win2dos(str)
{
    return strConv(str, 'cp866', 'windows-1251');
    //return strConv(str, 'windows-1251', 'cp866');
}

function ToUTF8(fname)
{
    return; //ничо не работает...
    
    //iconv -f cp1251 -t utf-8 МодульФормы.1s  >МодульФормы.1s.utf 
    var CmdLine = 'iconv -f cp1251 -t utf-8  '+fname+'  > '+fname+'.utf';
    echo(CmdLine);
    wsh.Run(CmdLine, 0, true);
    
    /*
    //эта шляпа не работает
    var file = new ActiveXObject('ADODB.Stream');
    file.Type = 2;
    file.mode = 3;
    file.Charset = "windows-1251";
    file.Open();
    echo(fname);
    file.LoadFromFile(fname);
    //file.Close();

    file.Charset = 'utf-8';
    //file.Open();
    file.SaveToFile(fname+'.utf');
    file.Close();
    //*/
}

function GetSubFolder(BaseFolder, SubDir)
{
    var Dir = fso.BuildPath(BaseFolder, SubDir);
    if( !fso.FolderExists(Dir) )
    {
        GetSubFolder(fso.GetParentFolderName(Dir));
        fso.CreateFolder(Dir);
    }
    
    return fso.GetFolder(Dir);
}

function CopyFile(file, DestFolder)
{
    var DestFName = fso.BuildPath(DestFolder.Path, file.Name);
    if( !fQuiet ) echo("Copy: "+file.Path+" --> "+DestFName);
    file.Copy(DestFName, true);
}

function DirToUTF(DirName)
{
    var names = new Array();
    var size = 0;
    
    var Folder = fso.GetFolder(DirName);
    var enFiles = new Enumerator(Folder.Files);
    for( ; !enFiles.atEnd(); enFiles.moveNext() )
    {
        var file = enFiles.item();
        var ext = fso.GetExtensionName(file.Name).toLowerCase();
        
        if( ext == '1s' )
        {
            //echo(' == '+file.Path);
            size = names.push(file.Path);
            //ToUTF8(file.Path);
        }
    }

    for( var i = 0; i < size; i++ )
    {
        ToUTF8(names[i]);
    }
    
    
    var enFolders = new Enumerator(Folder.SubFolders);
    for( ; !enFolders.atEnd(); enFolders.moveNext() )
    {
        var SubFolder = enFolders.item();
        DirToUTF(SubFolder.Path);
    }
}

function DecompileFile(file, DestFolder, GCompParams)
{
    var CmdLine = 'gcomp -d -F "'+file.Path+'" -D "'+DestFolder.Path+'" '+GCompParams;
    if( !fQuiet ) echo("Decompile: "+file.Path+" --> "+ DestFolder.Path);
    wsh.Run(CmdLine, 0, true);
}

function RunCmd(CmdLine)
{
    var cmd = wsh.Exec(CmdLine);
    while( !cmd.StdOut.AtEndOfStream )
    {
        var str = cmd.StdOut.ReadLine();
        echo(win2dos(str));
    }
}

function DecompileMD(DestDir, Sections)
{
    var DestFolder = GetSubFolder('.', DestDir);
    var gcomp_options = Sections['decompile-md']['options'];

    echo('decompileMD '+DestFolder);

    var file = fso.GetFile('1cv7.md');
    file.Copy('1cv7.cur.md', true);

    CmdLine = 'gcomp -d -F 1cv7.cur.md -D "'+DestFolder.Path+'" '+gcomp_options;
    RunCmd(CmdLine);
}

function DecompileDir(DestDir, Sections)
{
    var Section = Sections['decompile-dir'];
    
    var SrcDir = Section['src'];
    var SrcFolder = fso.GetFolder(fso.BuildPath('.', SrcDir));
    var DestFolder = GetSubFolder('.', DestDir);

    var gcomp_options = Section['options'];
    
    var use_list = Sections['list:'+Section['use-list']];
    var except_list = Sections['list:'+Section['except-list']];
    var ext_to_copy = Sections['ext-to-copy'];
    
    
    var enFiles = new Enumerator(SrcFolder.Files);
    for( ; !enFiles.atEnd(); enFiles.moveNext() )
    {
        var file = enFiles.item();
        var f_name = file.Name;
        var ext = fso.GetExtensionName(file.Name).toLowerCase();
        
        if( use_list )
        {
            if( !use_list[f_name] ) continue;
        }
        if( except_list )
        {
            if( except_list[f_name] ) continue;
        }
        
        //echo('  -d ' +file+' ---> '+DestFolder);
        
        if( ext_to_copy[ext] )
        {
            CopyFile(file, DestFolder);
        }
        else if( ext == 'ert' )
        {
            DecompileFile(file, DestFolder, gcomp_options);
            if( Section['make-utf'] == 'yes' )
            {
                var dir = fso.BuildPath(DestDir, fso.GetBaseName(f_name));
                //echo(dir+' = '+DestDir+'  +  '+file.BaseName);
                DirToUTF(dir);
            }
        }
        else
        {
            //всё остальное игнорим
        }
    }
    
}

function CompileDir(DestDir, Sections)
{
    var Section = Sections['compile-dir'];
    
    var SrcDir = Section['src'];
    var SrcFolder = fso.GetFolder(fso.BuildPath('.', SrcDir));
    var DestFolder = GetSubFolder('.', DestDir);

    var gcomp_options = Section['options'];
    if( ! gcomp_options ) gcomp_options = '';
    
    var use_list = Sections['list:'+Section['use-list']];
    var except_list = Sections['list:'+Section['except-list']];
    var ext_to_copy = Sections['ext-to-copy'];

    var enFiles = new Enumerator(SrcFolder.Files);
    for( ; !enFiles.atEnd(); enFiles.moveNext() )
    {
        var file = enFiles.item();
        var ext = fso.GetExtensionName(file.Name).toLowerCase();
        
        if( ext_to_copy[ext] )
        {
            CopyFile(file, DestFolder);
        }
    }

    var enFolders = new Enumerator(SrcFolder.SubFolders);
    for( ; !enFolders.atEnd(); enFolders.moveNext() )
    {
        var folder = enFolders.item();
        var f_name = folder.Name;
        
        var ModuleFName = fso.BuildPath(folder.Path, 'МодульФормы.1s');
        
        if( use_list )
        {
            if( !use_list[f_name] ) continue;
        }
        if( except_list )
        {
            if( except_list[f_name] ) continue;
        }
        
        if( fso.FileExists(ModuleFName) )
        {
            var ErtName = fso.BuildPath(DestFolder.Path, folder.Name+'.ert');
            var ErtDir = folder.Path;
            if( !fQuiet ) echo("Compile: "+ErtDir+" --> "+ErtName);
            //wsh.Run('gcomp -c -F "'+ErtName+'" -DD "'+ErtDir+'" '+gcomp_options, 0, true);
            RunCmd('gcomp -c -F "'+ErtName+'" -DD "'+ErtDir+'" '+gcomp_options);
        }
    }
}


//Добавим метод trim() в тип String  //выдрано из хелпа
String.prototype.trim = function()
{
    // Use a regular expression to replace leading and trailing 
    // spaces with the empty string
    return this.replace(/(^\s*)|(\s*$)/g, "");
}


function ProcessIniFile(ini_file_name)
{
    var INI = fso.OpenTextFile(ini_file_name, 1);
    var re_comment = /\s*;/;
    var re_empty_line = /^\s*$/;
    var re_sec = /\s*\[([^\s]+)\]/;
    var re_keypair = /\s*([^=]+)\s*=\s*(.+)\s*/;
    var re_key = /\s*([^=]+)\s*/;
    
    var Sections = {};
    var sec_name;
    
    var Actions = {
        'decompile-md': {'dest': DecompileMD},
        'decompile-dir': {'dest': DecompileDir},
        'compile-dir': {'dest': CompileDir}
    };
    
    while( !INI.AtEndOfStream )
    {
        var str = INI.ReadLine();
        if( re_comment.test(str) ) continue;
        if( re_empty_line.test(str) ) continue;

        var Matches = re_sec.exec(str);
        if( Matches != null )
        {
            sec_name = Matches[1].trim();
            Sections[sec_name] = {};
            //echo(sec_name);
            continue;
        }
        
        Matches = re_keypair.exec(str);
        if( Matches != null )
        {
            var name = Matches[1].trim();
            var value = Matches[2].trim();
            //echo(name+' = '+value);
            Sections[sec_name][name] = value;
            
            if( Actions[sec_name] && Actions[sec_name][name] )
            {
                Actions[sec_name][name](value, Sections);
            }
            continue;
        }
        
        Matches = re_key.exec(str);
        if( Matches != null )
        {
            var value = Matches[1].trim();
            //echo('   '+value)
            Sections[sec_name][value] = true;
            continue;
        }
    }
}


function ParseCommandLine()
{
    var objArgs = WScript.Arguments;
    var i;
    for( i = 0; i < objArgs.length; i++ )
    {
        if( objArgs(i) == "--ini-file" )
        {
            i++;
            var ini_file_name = objArgs(i);
            ProcessIniFile(ini_file_name);
        }

        if( objArgs(i) == "--Quiet" )
            fQuiet = true;
            
    }
     
}

//===========================================================================================================
var fConsole = (/.*(cscript\.exe)/i).test(WScript.FullName);
if( !fConsole )
{
    echo("Скрипт можно запускать только в консольном режиме (cscript decompile_ert.js)");
}
else
{
    ParseCommandLine();
}

