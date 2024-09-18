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
echo off
echo 要离开聊天室，请输入exit
title 正在连接聊天室...
ping 192.168.0.57 >nul
echo 连接成功
set password=
set password-error=1
set /p password=请输入运行口令：
if /i %password%=="mercedes" goto start
echo 密码错误!请按下任意按键退出...
set /a password-error+=1
pause>nul
exit
if password-error=5 goto start2
密码输入错误5次!按下任意按键退出脚本...
pause>nul

:start
del C:\Users\nolan\.ssh\known_hosts
echo 请输入"yes"以同意连接
ssh 192.168.0.57 -p 8080
echo 您已离开聊天室!请按下任意按键退出...
pause>nul
