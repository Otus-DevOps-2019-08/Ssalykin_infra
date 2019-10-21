# Ssalykin_infra
Ssalykin Infra repository

Задание:
Предложить вариант подключения к консоли someinternalhost при помощи команды типа ssh  someinternalhost

Решение

В директории /.ssh создать файл config c содержимым


Host bastion
Hostname 35.233.21.251
User appuser

Host someinternalhost
ProxyCommand ssh -q bastion nc -q0 10.132.0.3 22


после 
того осуществлять подключениие через ssh appuser@someinternalhost




bastion_IP = 35.233.21.251
someinternalhost_IP = 10.132.0.3
