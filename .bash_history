cd Code
composer create-project laravel/laravel Laravel --prefer-dist "5.1.*"
cd ~
ssh-keygen -t rsa -b 4096 -C "wb8688@163.com"
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
clip < ~/.ssh/id_rsa.pub
help
exit
