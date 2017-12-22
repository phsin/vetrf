iconv -c -f CP1251 -t utf-8 %1 > win.%1 
del %1
rename win.%1 %1