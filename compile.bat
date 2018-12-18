rem Пересоберем ert в vetrf-repo\OUT
cscript decompile_ert.js --ini-file compile-ert.ini
rem compile MD
gcomp -c -DD src\MD 