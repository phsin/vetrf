# !/bin/sh
echo CONVERT $1
cd $1
#for i in *.1s; do iconv -f WINDOWS-1251 -t UTF-8 "$i" >tmp; mv tmp "$i"; done
#for i in *.mdp; do iconv -f WINDOWS-1251 -t UTF-8 "$i" >tmp; mv tmp "$i"; done
#for i in *.frm; do iconv -f WINDOWS-1251 -t UTF-8 "$i" >tmp; mv tmp "$i"; done
#for i in *.txt; do iconv -f WINDOWS-1251 -t UTF-8 "$i" >tmp; mv tmp "$i"; done
find . -type f -name '*.1s' -o -name '*.1s' | while read i
    do
    echo converting $i
    iconv -f WINDOWS-1251 -t UTF-8 "$i" > tmp
    mv -f tmp "$i.utf"
    done
#find . -type f -name '*.mdp' -o -name '*.mdp' | while read i
#    do
#    echo converting $i
#    iconv -f WINDOWS-1251 -t UTF-8 "$i" > tmp
#    mv -f tmp "$i.utf"
#    done
#find . -type f -name '*.frm' -o -name '*.frm' | while read i
#    do
#    echo converting $i
#    iconv -f WINDOWS-1251 -t UTF-8 "$i" > tmp
#    mv -f tmp "$i.utf"
#    done

#find . -type f -name '*.txt' -o -name '*.txt' | while read i
#    do
#    echo converting $i
#    iconv -f WINDOWS-1251 -t UTF-8 "$i" > tmp
#    mv -f tmp "$i.utf"
#    done    