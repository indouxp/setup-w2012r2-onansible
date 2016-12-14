@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
: runas でバッチファイルを実行します
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set batfile=%1
set LOG=%~dpn0.log
echo C:\Windows\System32\cmd.exe /c %batfile%  >  %LOG%
runas C:\Windows\System32\cmd.exe /c %batfile% >> %LOG% 2>&1
set RC=%errorlevel%
exit /b %RC%
