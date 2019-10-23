# Ssalykin_infra
Ssalykin Infra repository
ДЗ 5: Знакомство с облачной инфраструктурой и облачными сервисами
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

ДЗ 6:Основные сервисы Google Cloud Platform (GCP).

Задача: При помощи gcloud создать хост и задеплоить на него приложение
Выполнено:
1)Был установлен gcloud и подключен к аккаунту
2)Был создан хост при помощи gcloud.
3)На хосте установлен ruby
4)На хосте устнановлено MongoDB
5)Произведен деплой тестового приложения, проверена его работоспособность
6)Комманды, потребовавшиеся для выполнения задания сохранены в виде shell скриптов

testapp_IP = 35.229.253.109 testapp_port = 9292

