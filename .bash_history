cd Code
composer create-project laravel/laravel Laravel --prefer-dist "5.1.*"
cd ~
ssh-keygen -t rsa -b 4096 -C "wb8688@163.com"
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
clip < ~/.ssh/id_rsa.pub
help
exit
heroku login
heroku keys:add
echo web: vendor/bin/heroku-php-apache2 public/ > Procfile
git add -A
git commit -m "Procfile for Heroku"
git config --global user.name "RoderickWoo"
git config --global user.email wb8688@163.com
git config --global push.default simple
git init
git add -A
git commit -m "Procfile for Heroku"
heroku create
heroku buildpacks:set heroku/php
php artisan key:generate
cd Code
cd Laravel
php artisan key:generate
heroku config:set APP_KEY=oXV5cFm3iwVNHCa69Og3knECLzMuhPDZ
cd ~
heroku config:set APP_KEY=oXV5cFm3iwVNHCa69Og3knECLzMuhPDZ
git push heroku master
heroku open
exit
cd Code
exit
