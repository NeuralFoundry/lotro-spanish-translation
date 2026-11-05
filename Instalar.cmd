@echo off
chcp 65001 >nul
if not exist "%~dp0python\python.exe" goto notextracted
"%~dp0python\python.exe" -I "%~dp0app\lotro_es.py" install %*
exit /b %errorlevel%

:notextracted
echo.
echo Primero extrae el ZIP en una carpeta: haz clic derecho en el ZIP y elige "Extraer todo".
echo Después ejecuta Instalar.cmd desde la carpeta extraída.
echo.
echo Extract the ZIP first (right click, Extract All), then run Instalar.cmd from the extracted folder.
echo.
pause
exit /b 1
