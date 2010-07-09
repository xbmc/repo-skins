@echo off
ECHO ------------------------------
ECHO Creating Back-Row Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ----------------------------------------
ECHO Creating XBT File...
START /B /WAIT media\TexturePacker -input media -output media\Textures.xbt

ECHO ----------------------------------------
ECHO Copying XBT File...
xcopy "media\Textures.xbt" "BUILD\skin.Back-Row\media\" /Q /I /Y


ECHO ----------------------------------------
ECHO Cleaning Up...
del "media\Textures.xbt"

ECHO ----------------------------------------
ECHO XBT Texture Files Created...
ECHO ----------------------------------------
ECHO Building Skin Directory...
xcopy "1080i" "BUILD\skin.back-row\1080i" /E /Q /I /Y
xcopy "720p" "BUILD\skin.back-row\720p" /E /Q /I /Y
xcopy "NTSC" "BUILD\skin.back-row\NTSC" /E /Q /I /Y
xcopy "NTSC16x9" "BUILD\skin.back-row\NTSC16x9" /E /Q /I /Y
xcopy "PAL" "BUILD\skin.back-row\PAL" /E /Q /I /Y
xcopy "PAL16x9" "BUILD\skin.back-row\PAL16x9" /E /Q /I /Y
xcopy "fonts" "BUILD\skin.back-row\fonts" /E /Q /I /Y
xcopy "images" "BUILD\skin.back-row\images" /E /Q /I /Y
xcopy "extras" "BUILD\skin.back-row\extras" /E /Q /I /Y
xcopy "colors" "BUILD\skin.back-row\colors" /E /Q /I /Y
xcopy "sounds" "BUILD\skin.back-row\sounds" /E /Q /I /Y
xcopy "scripts" "BUILD\skin.back-row\scripts" /E /Q /I /Y
xcopy "addon.xml" "BUILD\skin.back-row\" /Q /I /Y
xcopy "icon.png" "BUILD\skin.back-row\" /Q /I /Y
xcopy "language\english" "BUILD\skin.back-row\language\english" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\skin.back-row\language\Swedish" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\skin.back-row\language\Italian" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\skin.back-row\language\Korean" /E /Q /I /Y
xcopy "language\english" "BUILD\skin.back-row\language\Chinese (Simple)" /E /Q /I /Y

ECHO ------------------------------
ECHO Removing SVN directories from build
FOR /R BUILD %%d IN (.SVN) DO @RD /S /Q "%%d" 2>NUL

ECHO Build Complete - Scroll Up to check for errors.
ECHO Final build is located in the BUILD directory
ECHO Remember, skin.back-row goes inside add-ons directory!!

pause
