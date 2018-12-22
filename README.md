# Nira_project
This project is done using  Laravel. it is a Php framework;

#Required Software:
1-Xampp     : https://www.apachefriends.org/download.html
2-Composer  : https://getcomposer.org/Composer-Setup.exe
3-Laravel   

#To Install:
1- Download Project
2- install Xampp and Run Apache and mysql modules in it
3- install Composer by this link : https://getcomposer.org/Composer-Setup.exe
4- Open command prompt and change directory to Project directory
5- run command : composer install
6- run command : php artisan key:generate
7- go to PhpMyAdmin by http://localhost/phpmyadmin/  and create a Database with name Nira_project
8- edit .env file and update DB_USERNAME , DB_PASSWORD fields
9- run command : php artisan migrate --seed
10- run command : php artisan serve
      NOW project is Deployed
      go to browser and type http://localhost:8000   project will be displayed
