@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
: openfilesにより、管理者権限で実行されているかを確認します。
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set LOG=%~dpn0.log
openfiles > NUL 2>&1
if NOT %ERRORLEVEL% EQU 0 goto NotAdmin
echo 管理者権限で実行されています。 > %LOG%
echo 開始します                     >> %LOG%
:tasklist                            >> %LOG%
echo 終了します                     >> %LOG%

:End
  exit /b 0

:NotAdmin
  echo 管理者権限で実行されていません。 > %LOG%
  exit /b 9
