@echo off

echo sjd tool 3.2

echo ������ �����Ϸ��� �ƹ�Ű�� �����ʽÿ�

pause>NUL


color 04

set pass=

set count=0

set random_char=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#*()-+



:start

set /a num = (%random% %% 70)

call set char=%%random_char:~%num%,1%%

set pass=%pass%%char%

set /a count=%count%+1

if %count% lss 10 goto :start



echo %pass%



��ó:  [Plog]

:do
echo %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass%  %random% %pass% %random% %pass% 
goto do