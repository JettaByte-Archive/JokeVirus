@echo off
color 04
echo icd tool 3.2
echo �ý��� ��� ����
echo �ý��� ������Ʈ�� ���漺��
echo �ý��� ��Ƽ���̷��� ����ȭ ����
echo �ý��� njact ��ġ����
echo DDOS �غ�Ϸ�
echo ���� PC�� ȣ��Ʈ�� ����....
echo ȣ��Ʈ(������)���� ������
echo 127.0.0.1 ������ ip�ε�....
tracert 127.0.0.1
ping 127.0.0.1
echo ���Ἲ��
echo ����!
echo ���ݽ���
pause 
:ddos
set pass=

set count=0

set random_char=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#*()-+



:start

set /a num = (%random% %% 70)

call set char=%%random_char:~%num%,1%%

set pass=%pass%%char%

set /a count=%count%+1

if %count% lss 10 goto :start



echo 25.44.167.115�� DDOS ������...
echo ������ ��Ŷ %random%
echo ������ ���ڿ� %pass%
echo ���� ���� ��ġ �� %ping%
echo �������� ��ɱ�ٸ�����...
pause
echo ���Ȯ��
goto ddos