# !/bin/sh
echo CLEAN .\\src
cd .\\src
find . -iname "�����������������.txt" -print0 | xargs -0 rm -rf
find . -name "*.mdp" -print0 | xargs -0 rm -rf
#find . -name "*.frm" -print0 | xargs -0 rm -rf
find . -name "*.ord" -print0 | xargs -0 rm -rf
find . -type f -name '*.mxl' -o -name '*.mxl' -print0 | xargs -0 rm -rf
find . -name "��������.txt" -print0 | xargs -0 rm -rf
find . -name "PictureGallery" -print0 | xargs -0 rm -rf 
