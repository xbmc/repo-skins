@echo off
ECHO ----------------------------------------
echo Creating Build Folder
rmdir BUILD /S /Q
md BUILD\skin.SLik\media\

Echo .svn>exclude.txt
Echo Thumbs.db>>exclude.txt
Echo Desktop.ini>>exclude.txt
Echo dsstdfx.bin>>exclude.txt
Echo exclude.txt>>exclude.txt

ECHO ----------------------------------------
ECHO Creating XBT File...
START /B /WAIT ..\..\TexturePacker\TexturePacker -dupecheck -input media -output BUILD\skin.SLik\media\Textures.xbt

ECHO ----------------------------------------
ECHO XBT Texture Files Created...
ECHO Building Skin Directory...
xcopy "720p" "BUILD\skin.SLik\720p" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "fonts" "BUILD\skin.SLik\fonts" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "backgrounds" "BUILD\skin.SLik\backgrounds" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "sounds\*.*" "BUILD\skin.SLik\sounds\" /Q /I /Y /EXCLUDE:exclude.txt
xcopy "colors\*.*" "BUILD\skin.SLik\colors\" /Q /I /Y /EXCLUDE:exclude.txt
xcopy "language" "BUILD\skin.SLik\language" /E /Q /I /Y /EXCLUDE:exclude.txt

del exclude.txt

copy *.xml "BUILD\skin.SLik\"
copy *.txt "BUILD\skin.SLik\"
copy icon.png "BUILD\skin.SLik\"
pause