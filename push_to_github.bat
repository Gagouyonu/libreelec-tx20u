@echo off
chcp 65001 > nul
cls
echo ==============================================================
echo    ENVOI AUTOMATIQUE VERS GITHUB - LIBREELEC BUILDER
echo ==============================================================
echo.
echo 1. Rendez-vous sur https://github.com/new
echo 2. Donnez un nom a votre depot (ex: libreelec-builder)
echo 3. Laissez en "Public" et cliquez sur "Create repository"
echo 4. Copiez l'URL HTTPS du depot cree (ex: https://github.com/pseudo/libreelec-builder.git)
echo.
set /p REPO_URL="Collez l'URL de votre depot GitHub ici : "

if "%REPO_URL%"=="" (
    echo [ERREUR] Aucune URL specifiee.
    pause
    exit /b
)

cd /d "%~dp0"
git remote remove origin 2>nul
git remote add origin %REPO_URL%
echo.
echo Envoi des fichiers en cours vers GitHub...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ==============================================================
    echo [SUCCES] Vos fichiers sont en ligne sur GitHub !
    echo La compilation va pouvoir demarrer dans l'onglet "Actions".
    echo ==============================================================
    set ACTION_URL=%REPO_URL:.git=%/actions
    start %ACTION_URL%
) else (
    echo.
    echo [NOTE] Si GitHub vous demande une authentification, utilisez votre Token GitHub ou le navigateur.
)

pause
