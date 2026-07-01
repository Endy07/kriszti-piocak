@echo off
chcp 65001 >nul
echo ========================================================
echo Piócás Weboldal Feltöltő és Frissítő Szkript
echo ========================================================
echo.
echo 1. Készítem a fájl listát (files.json)...
powershell -ExecutionPolicy Bypass -File frissit.ps1

echo 2. Fájlok listája sikeresen frissítve.
echo.

echo 3. Fájlok szinkronizálása a GitHub-al...
git add .
git commit -m "Automatikus feltöltés: frissült a piócás weboldalak listája"
git push

echo.
echo ========================================================
echo Kész! A fájlok kimentek a GitHub-ra.
echo ========================================================
pause
