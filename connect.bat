@echo off
rem ==============================================
rem 本脚本由shidi2023开发，未经授权禁止转载
rem 本脚本实施定期更新
rem 
rem 
rem 
rem 
rem 
rem 
rem ==============================================
echo If you want to leave the chatroom, Please input"exit"
title Connect to chatroom(#83)...
ping 192.168.0.57 >nul
echo Connect succeed!
set password=
set /p password=Please input password：
if /i %password%==mercedes goto start
echo Password Incorrect！Press any key to exit...
pause>nul
exit

:start
del C:\Users\nolan\.ssh\known_hosts>nul
echo Please input "yes" to connect to chatroom
ssh 192.168.0.57 -p 8080
echo Press any key to exit...
pause>nul
