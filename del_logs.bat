rem Удаление xml файлов старше 30 дней в каталоге

set offset=30
set logsDir="C:\1C\Complex\Vetis\logs\"
rem pushd %logsDir% && (forfiles /d -%offset% /m *.xml /c "cmd /c del /f /q @file")
rem popd
cd  %logsDir%
for /f "skip=%offset%" %%i in ('dir /o:-d /a:-d /b *.xml') do del %%i
