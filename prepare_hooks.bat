rem Начальная подготовка хуков при инициализации git
cd .git
rd /s /q hooks
mklink /D /H /J %~dp0.git\hooks %~dp0hooks

rem cd .git\hooks
rem del convert_utf8.sh
rem del pyv8unpack.py
rem del clean_dir2.bat
rem del clean_dir2.sh
rem del pre-commit

rem %cd% - путь к текущей папке, без хвостового бэкслэша (\)
rem %~dp0 - путь к папке из которой был запущен батник, заканчивается бэкслешем (\)
rem mklink %~dp0.git\hooks\pyv8unpack.py %~dp0pyv8unpack.py 
rem mklink %~dp0.git\hooks\convert_utf8.sh %~dp0convert_utf8.sh
rem mklink %~dp0.git\hooks\clean_dir2.bat %~dp0clean_dir2.bat
rem mklink %~dp0.git\hooks\clean_dir.sh %~dp0clean_dir.sh
rem mklink %~dp0.git\hooks\pre-commit %~dp0pre-commit
