@echo off
rem chcp 1251
                :: file - имя или маска жертвы для удаления
rem set "file=ОбъектыМетаданных.txt"
                :: from - имя папки, с которой начинаем искать жертву
                :: завершающий обратный \ для диска - обязателен,
                :: папка кодируется БЕЗ завершающего \
 
set "from=%1"
rem set "from=c:\"
 
set "file=ОбъектыМетаданных.txt"
call :delall-file "%file%" "%from%"
set "file=Структура.mdp"
call :delall-file "%file%" "%from%"
rem set "file=Форма.frm"
rem call :delall-file "%file%" "%from%"
set "file=ПорядокОбъектов.ord"
call :delall-file "%file%" "%from%"
set "file=Таблица.mxl"
call :delall-file "%file%" "%from%"
set "file=Описание.txt"
call :delall-file "%file%" "%from%"

rem pause
exit /b
rem break
 
:delall-file
rem echo удалить РЕКУРСИВНО файлы с именем "%file%",
rem echo начиная с папки "%from%" ?
echo delete file "%file%" from "%from%"
echo.
rem pause
rem echo....наберись терпения - рекурсивно ищу файлы начиная с папки %from%
 
                :: удалить echo в следующей строке, чтобы РЕАЛЬНО избавиться от файлов
 
for /f "tokens=*" %%v in ('where /r %~s2 /f %~snx1') do (
echo del %%v
del %%v
)

exit /b