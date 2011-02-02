@echo off
ECHO ------------------------------
echo Creating Ellipsis Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Extracting Revision Number
FOR /F "Tokens=2* Delims=]" %%R IN ('FIND /v /n "&_&_&_&" ".svn\entries" ^| FIND "[11]"') DO SET Revision=%%R

ECHO ------------------------------
ECHO Getting Version
FOR /F "Tokens=3 Delims=><" %%V IN ('FIND "<version>" "description.xml"') DO SET Version=%%V

ECHO ------------------------------
ECHO Getting Skin Name
FOR /F "Tokens=3 Delims=><" %%V IN ('FIND "<title>" "description.xml"') DO SET SkinName=%%V

REM ECHO ------------------------------
REM ECHO Creating XPR Files...
REM CALL media\XBMCTex.bat

REM ECHO ------------------------------
REM ECHO Copying XPR Files...
REM xcopy "media\*.xpr" "BUILD\skin.ellipsis\media\" /Q /I /Y

REM ECHO ------------------------------
REM ECHO Cleaning Up...
REM del "media\*.xpr"

ECHO ------------------------------
ECHO Copying Image Files...
xcopy "media\*.*" "BUILD\skin.ellipsis\media\" /E /Q /I /Y

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "1080i" "BUILD\skin.ellipsis\1080i" /E /Q /I /Y
xcopy "720p" "BUILD\skin.ellipsis\720p" /E /Q /I /Y
xcopy "NTSC" "BUILD\skin.ellipsis\NTSC" /E /Q /I /Y
xcopy "NTSC16x9" "BUILD\skin.ellipsis\NTSC16x9" /E /Q /I /Y
xcopy "PAL" "BUILD\skin.ellipsis\PAL" /E /Q /I /Y
xcopy "PAL16x9" "BUILD\skin.ellipsis\PAL16x9" /E /Q /I /Y
xcopy "colors" "BUILD\skin.ellipsis\colors" /E /Q /I /Y
xcopy "fonts" "BUILD\skin.ellipsis\fonts" /E /Q /I /Y
xcopy "sounds" "BUILD\skin.ellipsis\sounds" /E /Q /I /Y
xcopy "language" "BUILD\skin.ellipsis\language" /E /Q /I /Y
xcopy "*.xml" "BUILD\skin.ellipsis\" /Q /I /Y

ECHO ------------------------------
ECHO Making Revision.xml Include
ECHO ^<!-- Ellipsis skin revision: %Revision% - built with build.bat version 1.0 --^>> "BUILD\skin.ellipsis\720p\Revision.xml"
ECHO ^<includes^>>> "BUILD\skin.ellipsis\720p\Revision.xml"
ECHO     ^<include name="Revision"^>>> "BUILD\skin.ellipsis\720p\Revision.xml"
ECHO         ^<label^>%SkinName% Version: r%Revision% ^(Compiled : %date%^)^</label^>>> "BUILD\skin.ellipsis\720p\Revision.xml"
ECHO     ^</include^>>> "BUILD\skin.ellipsis\720p\Revision.xml"
ECHO ^</includes^>>> "BUILD\skin.ellipsis\720p\Revision.xml"

copy *.txt "BUILD\skin.ellipsis\"
copy icon.png "BUILD\skin.ellipsis\"

ECHO ------------------------------
ECHO Removing SVN directories from build
FOR /R BUILD %%d IN (SVN) DO @RD /S /Q "%%d" 2>NUL

echo Build Complete - Scroll Up to check for errors.
echo Final build is located in the BUILD directory
echo Place in the 'add-ons' folder in your XBMC installation directory
pause
