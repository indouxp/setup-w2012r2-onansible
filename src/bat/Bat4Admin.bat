@echo off
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
: openfiles�ɂ��A�Ǘ��Ҍ����Ŏ��s����Ă��邩���m�F���܂��B
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set LOG=%~dpn0.log
openfiles > NUL 2>&1
if NOT %ERRORLEVEL% EQU 0 goto NotAdmin
echo �Ǘ��Ҍ����Ŏ��s����Ă��܂��B > %LOG%
echo �J�n���܂�                     >> %LOG%
:tasklist                            >> %LOG%
echo �I�����܂�                     >> %LOG%

:End
  exit /b 0

:NotAdmin
  echo �Ǘ��Ҍ����Ŏ��s����Ă��܂���B > %LOG%
  exit /b 9
