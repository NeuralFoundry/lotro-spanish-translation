@echo off
chcp 65001 >nul
if not exist "%~dp0python\python.exe" goto notextracted
"%~dp0python\python.exe" -I "%~dp0app\lotro_es.py" uninstall %*
exit /b %errorlevel%

:notextracted
echo.
echo Primero extrae el ZIP en una carpeta: haz clic derecho en el ZIP y elige "Extraer todo".
echo Después ejecuta Desinstalar.cmd desde la carpeta extraída.
echo.
echo Extract the ZIP first (right click, Extract All), then run Desinstalar.cmd from the extracted folder.
echo.
pause
exit /b 1
