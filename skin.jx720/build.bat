@echo off
ECHO ----------------------------------------
echo Creating Build Folder
rmdir BUILD /S /Q
md BUILD\skin.jx720\media\

Echo .svn>exclude.txt
Echo Thumbs.db>>exclude.txt
Echo Desktop.ini>>exclude.txt
Echo dsstdfx.bin>>exclude.txt
Echo exclude.txt>>exclude.txt

ECHO ----------------------------------------
ECHO Creating XBT File...
START /B /WAIT ..\..\TexturePacker\TexturePacker -dupecheck -input media -output BUILD\skin.jx720\media\Textures.xbt

ECHO ----------------------------------------
ECHO XBT Texture Files Created...
ECHO Building Skin Directory...
xcopy "720p" "BUILD\skin.jx720\720p" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "fonts" "BUILD\skin.jx720\fonts" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "backgrounds" "BUILD\skin.jx720\backgrounds" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "button_icons" "BUILD\skin.jx720\button_icons" /E /Q /I /Y /EXCLUDE:exclude.txt
xcopy "sounds\*.*" "BUILD\skin.jx720\sounds\" /Q /I /Y /EXCLUDE:exclude.txt
xcopy "colors\*.*" "BUILD\skin.jx720\colors\" /Q /I /Y /EXCLUDE:exclude.txt
xcopy "language" "BUILD\skin.jx720\language" /E /Q /I /Y /EXCLUDE:exclude.txt

del exclude.txt

copy *.xml "BUILD\skin.jx720\"
copy *.txt "BUILD\skin.jx720\"
copy icon.png "BUILD\skin.jx720\"
pause