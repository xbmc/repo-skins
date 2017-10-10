@echo off
ECHO ------------------------------
echo Creating grid Build Folder
rmdir BUILD /S /Q
md BUILD

ECHO ------------------------------
ECHO Building Skin Directory...
xcopy "xml" "BUILD\skin.grid\xml" /E /Q /I /Y
xcopy "colors" "BUILD\skin.grid\colors" /E /Q /I /Y
xcopy "resources" "BUILD\skin.grid\resources" /E /Q /I /Y
xcopy "fonts" "BUILD\skin.grid\fonts" /E /Q /I /Y
xcopy "language" "BUILD\skin.grid\language" /E /Q /I /Y
xcopy "language\resource.language.bg_bg" "BUILD\skin.grid\language\resource.language.bg_bg" /E /Q /I /Y
xcopy "language\resource.language.ca_es" "BUILD\skin.grid\language\resource.language.ca_es" /E /Q /I /Y
xcopy "language\resource.language.cs_cz" "BUILD\skin.grid\language\resource.language.cs_cz" /E /Q /I /Y
xcopy "language\resource.language.da_dk" "BUILD\skin.grid\language\resource.language.da_dk" /E /Q /I /Y
xcopy "language\resource.language.de_de" "BUILD\skin.grid\language\resource.language.de_de" /E /Q /I /Y
xcopy "language\resource.language.en_gb" "BUILD\skin.grid\language\resource.language.en_gb" /E /Q /I /Y
xcopy "language\resource.language.es_es" "BUILD\skin.grid\language\resource.language.es_es" /E /Q /I /Y
xcopy "language\resource.language.fi_fi" "BUILD\skin.grid\language\resource.language.fi_fi" /E /Q /I /Y
xcopy "language\resource.language.fr_fr" "BUILD\skin.grid\language\resource.language.fr_fr" /E /Q /I /Y
xcopy "language\resource.language.gl_es" "BUILD\skin.grid\language\resource.language.gl_es" /E /Q /I /Y
xcopy "language\resource.language.it_it" "BUILD\skin.grid\language\resource.language.it_it" /E /Q /I /Y
xcopy "language\resource.language.ko_ko" "BUILD\skin.grid\language\resource.language.ko_ko" /E /Q /I /Y
xcopy "language\resource.language.lt_lt" "BUILD\skin.grid\language\resource.language.lt_lt" /E /Q /I /Y
xcopy "language\resource.language.nb_no" "BUILD\skin.grid\language\resource.language.nb_no" /E /Q /I /Y
xcopy "language\resource.language.nl_nl" "BUILD\skin.grid\language\resource.language.nl_nl" /E /Q /I /Y
xcopy "language\resource.language.pt_br" "BUILD\skin.grid\language\resource.language.pt_br" /E /Q /I /Y
xcopy "language\resource.language.pl_pl" "BUILD\skin.grid\language\resource.language.pl_pl" /E /Q /I /Y
xcopy "language\resource.language.pt_pt" "BUILD\skin.grid\language\resource.language.pt_pt" /E /Q /I /Y
xcopy "language\resource.language.ro_ro" "BUILD\skin.grid\language\resource.language.ro_ro" /E /Q /I /Y
xcopy "language\resource.language.ru_ru" "BUILD\skin.grid\language\resource.language.ru_ru" /E /Q /I /Y
xcopy "language\resource.language.sr_rs" "BUILD\skin.grid\language\resource.language.sr_rs" /E /Q /I /Y
xcopy "language\resource.language.sv_se" "BUILD\skin.grid\language\resource.language.sv_se" /E /Q /I /Y
xcopy "language\resource.language.zh_cn" "BUILD\skin.grid\language\resource.language.zh_cn" /E /Q /I /Y
xcopy "playlists" "BUILD\skin.grid\playlists" /E /Q /I /Y
xcopy "shortcuts" "BUILD\skin.grid\shortcuts" /E /Q /I /Y
xcopy "extras" "BUILD\skin.grid\extras" /E /Q /I /Y
xcopy "*.xml" "BUILD\skin.grid\" /Q /I /Y
xcopy "*.txt" "BUILD\skin.grid\" /Q /I /Y
xcopy "*.png" "BUILD\skin.grid\" /Q /I /Y
xcopy "*.jpg" "BUILD\skin.grid\" /Q /I /Y
xcopy "*.md" "BUILD\skin.grid\" /Q /I /Y

ECHO ------------------------------
ECHO Creating XBT File...
START /B /WAIT TexturePacker -dupecheck -input media\ -output media\Textures.xbt

xcopy "media\*.xbt" "BUILD\skin.grid\media\" /Q /I /Y

REM ECHO ------------------------------
REM ECHO Cleaning Up...
REM del "media\*.xbt"

REM ECHO ------------------------------
REM ECHO Copying Image Files...
REM xcopy "media\*.*" "BUILD\skin.grid\media\" /E /Q /I /Y

echo Build Complete - Scroll Up to check for errors.
pause