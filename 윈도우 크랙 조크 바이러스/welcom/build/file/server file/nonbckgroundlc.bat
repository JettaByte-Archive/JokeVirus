@echo off
color 04
echo icd tool 3.2
echo 시스템 장악 성공
echo 시스템 레지스트리 변경성공
echo 시스템 안티바이러스 무력화 성공
echo 시스템 njact 설치성공
echo DDOS 준비완료
echo 좀비 PC를 호스트에 연결....
echo 호스트(공격자)에게 연결중
echo 127.0.0.1 공격자 ip로드....
tracert 127.0.0.1
ping 127.0.0.1
echo 연결성공
echo 성공!
echo 공격시작
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



echo 25.44.167.115에 DDOS 공격중...
echo 전송한 패킷 %random%
echo 전송한 문자열 %pass%
echo 공격 받은 장치 핑 %ping%
echo 공격자의 명령기다리는중...
pause
echo 명령확인
goto ddos