@echo off
ECHO ------------------------------
ECHO Creating Back-Row Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Creating XPR Files...
CALL media\XBMCTex.bat

ECHO ------------------------------
ECHO Copying XPR Files...
xcopy *.xpr "BUILD\Back-Row\media\" /Q /I /Y

ECHO ------------------------------
ECHO Cleaning Up...
del *.xpr

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "1080i" "BUILD\Back-Row\1080i" /E /Q /I /Y
xcopy "720p" "BUILD\Back-Row\720p" /E /Q /I /Y
xcopy "NTSC" "BUILD\Back-Row\NTSC" /E /Q /I /Y
xcopy "NTSC16x9" "BUILD\Back-Row\NTSC16x9" /E /Q /I /Y
xcopy "PAL" "BUILD\Back-Row\PAL" /E /Q /I /Y
xcopy "PAL16x9" "BUILD\Back-Row\PAL16x9" /E /Q /I /Y
xcopy "fonts" "BUILD\Back-Row\fonts" /E /Q /I /Y
xcopy "images" "BUILD\Back-Row\images" /E /Q /I /Y
xcopy "extras" "BUILD\Back-Row\extras" /E /Q /I /Y
xcopy "colors" "BUILD\Back-Row\colors" /E /Q /I /Y
xcopy "sounds" "BUILD\Back-Row\sounds" /E /Q /I /Y
xcopy "skin.xml" "BUILD\Back-Row\" /Q /I /Y
xcopy "language\english" "BUILD\Back-Row\language\english" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\Back-Row\language\Swedish" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\Back-Row\language\Italian" /E /Q /I /Y
xcopy "language\Swedish" "BUILD\Back-Row\language\Korean" /E /Q /I /Y
xcopy "language\english" "BUILD\Back-Row\language\Chinese (Simple)" /E /Q /I /Y

ECHO ------------------------------
ECHO Removing SVN directories from build
FOR /R BUILD %%d IN (.SVN) DO @RD /S /Q "%%d" 2>NUL

ECHO Build Complete - Scroll Up to check for errors.
ECHO Final build is located in the BUILD directory

pause
