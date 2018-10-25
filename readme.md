## My Site

  Discription
  Discription
  Discription
  Discription
  Discription
  Discription
  Discription

## Installation Description

  Набираем в консоли:
- cd domains
- git clone https://github.com/KozlovskiyDN/MySite.git
- composer self-update
- composer install

- Создаем файл .env из .env.exempl
- Создать базу данных с именем mysite
- Проверить порты DB_PORT в настройках сервера
- Выполнить миграцию - php artisan migrate либо экспорт из файла MSQL 
- Заходим в domains там папка с именем MySite
- Перезапускаем сервер
- Заходим из "Мои сайты" на MySite

  Для заливки на сервер:
- cd domains 
- git add *
- git commit -m "Izmemenie_1"
- git status
- git push

  создание новой ветки
- git branch user 
- git checkout user

  Подключаем изменения пользователя 
- git merge user 
 
 
## Used technologies

- apache php 7.2
- PHP 7.2
- MySQL 5.7
- Laravel 5.7
- Bootstrap
- jQvery

