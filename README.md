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

testapp_IP = 35.229.253.109
testapp_port = 9292


ДЗ 7:Модели управления инфраструктурой.

Задача: При помощи Packer создать образ VM. Проверить работоспособность образа, раскатив ео на VM и произвести деплой приложения

Выполнено:
1)Был установлен Packer
2)Packerу был предоставлен доступ до ресурсов GCP
3)Было создано описание образа.
4)Был собран образ
5)Образ был установлен на VM
6)На VM было установлено приложение
7)Описание образа было параметризированно

ДЗ8:
Практика Infrastructure as a Code(IAC)
Задача: Создать конфигурацию Terraform позволяющую ему создать VM с ранее созданым образом и задеплоить приложение.
Выполнено:
1)Был установлен Terraform
2)Была создана конфигурация VM.
3)В конфигурацию были добавлены метаданные
4)В конфигурацию были добавлены провиженеры для деплоя приложения.
5)Конфигурация была параметризована.
