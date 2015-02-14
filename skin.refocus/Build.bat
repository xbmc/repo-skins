@echo off
ECHO ------------------------------
echo Creating reFocus Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "720p" "BUILD\skin.refocus\720p" /E /Q /I /Y
xcopy "backgrounds" "BUILD\skin.refocus\backgrounds" /E /Q /I /Y
xcopy "colors" "BUILD\skin.refocus\colors" /E /Q /I /Y
xcopy "fonts" "BUILD\skin.refocus\fonts" /E /Q /I /Y
xcopy "language" "BUILD\skin.refocus\language" /E /Q /I /Y
xcopy "language\Bulgarian" "BUILD\skin.refocus\language\Bulgarian" /E /Q /I /Y
xcopy "language\Catalan" "BUILD\skin.refocus\language\Catalan" /E /Q /I /Y
xcopy "language\Czech" "BUILD\skin.refocus\language\Czech" /E /Q /I /Y
xcopy "language\Danish" "BUILD\skin.refocus\language\Danish" /E /Q /I /Y
xcopy "language\Dutch" "BUILD\skin.refocus\language\Dutch" /E /Q /I /Y
xcopy "language\English" "BUILD\skin.refocus\language\English" /E /Q /I /Y
xcopy "language\Finnish" "BUILD\skin.refocus\language\Finnish" /E /Q /I /Y
xcopy "language\French" "BUILD\skin.refocus\language\French" /E /Q /I /Y
xcopy "language\Galician" "BUILD\skin.refocus\language\Galician" /E /Q /I /Y
xcopy "language\German" "BUILD\skin.refocus\language\German" /E /Q /I /Y
xcopy "language\Italian" "BUILD\skin.refocus\language\Italian" /E /Q /I /Y
xcopy "language\Korean" "BUILD\skin.refocus\language\Korean" /E /Q /I /Y
xcopy "language\Lithuanian" "BUILD\skin.refocus\language\Lithuanian" /E /Q /I /Y
xcopy "language\Norwegian" "BUILD\skin.refocus\language\Norwegian" /E /Q /I /Y
xcopy "language\Polish" "BUILD\skin.refocus\language\Polish" /E /Q /I /Y
xcopy "language\Portuguese (Brazil)" "BUILD\skin.refocus\language\Portuguese (Brazil)" /E /Q /I /Y
xcopy "language\Portuguese (Portugal)" "BUILD\skin.refocus\language\Portuguese (Portugal)" /E /Q /I /Y
xcopy "language\Romanian" "BUILD\skin.refocus\language\Romanian" /E /Q /I /Y
xcopy "language\Russian" "BUILD\skin.refocus\language\Russian" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\skin.refocus\language\Swedish" /E /Q /I /Y
xcopy "language\Spanish" "BUILD\skin.refocus\language\Spanish" /E /Q /I /Y
xcopy "playlists" "BUILD\skin.refocus\playlists" /E /Q /I /Y
xcopy "shortcuts" "BUILD\skin.refocus\shortcuts" /E /Q /I /Y
xcopy "sounds" "BUILD\skin.refocus\sounds" /E /Q /I /Y
xcopy "*.xml" "BUILD\skin.refocus\" /Q /I /Y
xcopy "*.txt" "BUILD\skin.refocus\" /Q /I /Y
xcopy "*.png" "BUILD\skin.refocus\" /Q /I /Y
xcopy "*.jpg" "BUILD\skin.refocus\" /Q /I /Y
xcopy "*.md" "BUILD\skin.refocus\" /Q /I /Y

ECHO ------------------------------
ECHO Creating XBT File...
START /B /WAIT TexturePacker -dupecheck -input media\ -output media\Textures.xbt

xcopy "media\*.xbt" "BUILD\skin.refocus\media\" /Q /I /Y

REM ECHO ------------------------------
REM ECHO Cleaning Up...
REM del "media\*.xbt"

REM ECHO ------------------------------
REM ECHO Copying Image Files...
REM xcopy "media\*.*" "BUILD\skin.refocus\media\" /E /Q /I /Y

echo Build Complete - Scroll Up to check for errors.
pause