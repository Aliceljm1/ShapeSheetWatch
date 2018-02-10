@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"

set RESVR=regsvr32.exe

IF "%PROCESSOR_ARCHITECTURE%" == "AMD64" (
	set RESVR=%SYSTEMROOT%\syswow64\regsvr32.exe
) ELSE (
	set RESVR=regsvr32.exe
)

echo "%RESVR%"

:开始注册
echo start regsvr32 /u
"%RESVR%" /u "%CD%\bin\x64\Debug\Addin.dll"
echo start regsvr32
"%RESVR%" "%CD%\bin\x64\Debug\Addin.dll"