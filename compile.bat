rem Пересоберем ert в vetrf-repo\OUT
cscript decompile_ert.js --ini-file compile-ert.ini
rem compile MD
gcomp -c -DD src\MD 
copy 1cv7.new.md 1cv7_Vetis.md