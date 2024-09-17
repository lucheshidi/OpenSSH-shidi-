@echo off
@echo 要离开聊天室，请输入exit
title 正在连接聊天室...
ping 127.0.0.1
ssh 192.168.0.57 -p 1145
pause