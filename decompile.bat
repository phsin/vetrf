@echo off


cscript decompile_ert.js --ini-file decompile.ini 


perl correct_dlg.pl -d Src\Vetis
perl CompressMetadata.pl -q -d Src\Vetis

bash hooks/convert_utf8.sh %~dp0src

rem Пересоберем ert прямо в репозитории
rem cscript decompile_ert.js --ini-file compile-ert.ini
rem compile.bat

