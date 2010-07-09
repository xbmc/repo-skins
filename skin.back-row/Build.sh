#!/bin/bash

cd ${0%/*}
which TexturePacker &>/dev/null || { echo Can\'t find TexturePacker; exit 1 ;}

SKINNAME=Back-Row

echo ------------------------------
echo Creating $SKINNAME Build Folder
rm -Rf BUILD
mkdir -p BUILD/$SKINNAME/media

echo ------------------------------
echo Creating XBT Files...
TexturePacker -input media -output media/Textures.xbt


echo ------------------------------
echo Copying XBT Files...
mv -f media/Textures.xbt BUILD/$SKINNAME/media/ 

echo ------------------------------
echo creating Media Directory structure...
for i in "Default Wallpaper" Movies TV Music Photos Apps Settings "Sub Button Wallpaper" Files Scripts Weather
do 
  mkdir "BUILD/$SKINNAME/media/$i"
done

echo ------------------------------
echo Building Skin Directory...

for i in 1080i 720p NTSC NTSC16x9 PAL PAL16x9 fonts colors sounds language *.xml
do
  cp -R $i BUILD/$SKINNAME/
done

cp *.txt BUILD
   
echo ------------------------------
echo Removing SVN directories from build
for inode in $(ls -Ria BUILD/$SKINNAME|grep ".svn$"|cut -d' ' -f1)
do
	find -inum $inode -exec rm -Rf '{}' \; &>/dev/null
done

echo Build Complete - Scroll Up to check for errors.
echo Final build is located in the BUILD directory
echo ftp the $SKINNAME folder in the build dir to your xbox