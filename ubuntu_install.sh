#!/bin/sh 
######################################################
##                                                  ##
##   You may modify and custom it to suit your need ##
##                                                  ##
######################################################
##--------------------------------------------------##
##        https://github.com/liaobaocheng           ##
##--------------------------------------------------##

echo ""
echo " ************************************************** "
echo "                      声明                           "
echo "                                                    "
echo "                                                    "
echo "       作     者 ： 廖保城                            "
echo "       时     间 ： 2016.12.30                       "
echo "                                                    "
echo " ************************************************** "
echo -e "\n\n\n\n"
sleep 1

#更新源
sudo apt-get update
echo " ************************************************** "
echo "                                                    "
echo "              Ubuntu15.10更新源完毕                   "
echo "                 之后开始安装平台支持库                 "
echo "                                                    "
echo " ************************************************** "


#删除不需要的软件
echo " ************************************************** "
echo "                准备删除 libreoffice ...              "
sudo apt-get remove libreoffice-common -y
echo "                已经删除 libreoffice 。。。            "
echo " ************************************************** "
echo "                准备删除 amazon                       "
sudo apt-get remove unity-webapps-common  -y
echo "                已经删除 amazon                       "
echo " ************************************************** "
echo "                准备删除 基本不用的自带软件              "
sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines -y
sudo cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install   -y
sudo apt-get remove onboard deja-dup   -y
echo " ************************************************** "

# 集成vim
echo " ************************************************** "
echo "                         准备安装vim git curl         "
sudo apt-get install vim -y
sudo apt-get install git -y
sudo apt-get install curl -y
sudo apt-get install software-properties-common -y#添加add-apt-repository软件
echo "                         安装vim git curl 完成        "
echo " ************************************************** "

# 安装climate the ultimate command line tool for linux 
echo " ************************************************** "
echo "                         准备安装climate  "
echo " ************************************************** "
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/adtac/climate/master/install)"
# 安装chrome
echo " ************************************************** "
echo "                         准备下载chrome                "
echo -e "          下载源加入到系统的源列表\n\n"
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
echo -e "          导入谷歌软件的公钥\n\n"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt-get -f update
sudo apt-get install google-chrome-stable -y
echo "                         安装chrome完成                "
echo " ************************************************** "


# 安装Oracle-Java
echo " ************************************************** "
echo "                         准备安装java                "
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer   -y
echo "                         安装java完成                "
echo " ************************************************** "


# 安装aria2c
echo " ************************************************** "
echo "                         准备安装aria2c              "
sudo apt-get install aria -y
echo "                         安装aria2c完成                "
echo " ************************************************** "


# 日志神器
echo " ************************************************** "
echo "                         准备安装lnav 日志神器         "
sudo apt-get install lnav -y
echo "                         安装lnav 日志神器完成         "
echo " ************************************************** "

# 压缩工具
echo " ************************************************** "
echo "                         准备安装解压工具rar         "
sudo apt-get install unrar -y
echo "                         安装解压工具rar完成         "
echo " ************************************************** "

################################ 接下来进行各种语言的配置 javascript php python java ruby etc
echo " ************************************************** "
echo " 接下来进行各种语言的配置 javascript php python java ruby etc "

#### JavaScript
echo " ************************************************** "
echo "                                                    "
echo "           开始安装javascript相关支持                  "
echo "                                                    "
echo " ************************************************** "

echo " ************************************************** "
echo " now is nodejs "
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g cnpm

echo " ************************************************** "
echo " now is yarn "
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn -y

echo " ************************************************** "
echo " now is atom "
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom -y
sudo touch ~/.atom/.apmrc
echo "registry=https://registry.npm.taobao.org/\nstrict-ssl=false" >> ~/.atom/.apmrc


#### python
echo " ************************************************** "
echo "                                                    "
echo "             开始安装python的相关支持                  "
echo "                                                    "
echo " ************************************************** "
sudo apt-get install easy_install -y
sudo apt-get install python-pip -y

#### php
echo " ************************************************** "
echo "                                                    "
echo "                  开始安装php相关支持                  "
echo "                                                    "
echo " ************************************************** "
sudo add-apt-repository ppa:ondrej/php5-5.6
sudo apt-get update
sudo apt-get install php5.6 php5.6-mcrypt php5.6-mbstring php5.6-cli php5.6-mysql php5.6-gd php5.6-intl php5.6-xsl php5.6-zip -y
sudo apt-get install apache2 libapache2-mod-php5 -y
sudo apt-get install php5-sqlite -y

echo " ************************************************** "
echo "                                                    "
echo "                  开始安装 composer                   "
echo "                                                    "
echo " ************************************************** "
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
compser --verison #查看是否成功

#### ruby
echo " ************************************************** "
echo "                                                    "
echo "                 开始安装ruby相关支持                  "
echo "                                                    "
echo " ************************************************** "
sudo apt-get install zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.3.3
rbenv global 2.3.3
echo " ************************************************** "
ruby -v
gem install bundle
gem install rails -v 5.0.0.1
rbenv rehash
rails -v



#### 数据库
echo " ************************************************** "
echo "                                                    "
echo "          开始安装数据库和服务器 mysql apache2          "
echo "                                                    "
echo " ************************************************** "
sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y
sudo apt-get install apache2 -y


#### 一些好用的辅助工具
echo " ************************************************** "
echo "                                                    "
echo "                 开始安装辅助工具                      "
echo "                                                    "
echo " ************************************************** "

echo " ************************************************** "
echo "                 安装doxygen和graphviz               "
sudo apt-get install doxygen -y
sudo apt-get install graphviz -y
echo "                 安装doxygen和graphviz完成            "
echo " ************************************************** "


#### 配置环境
echo " ************************************************** "
echo "  修改语言为en_US                                     "
export LANG=en_US
echo " ************************************************** "


#### 配置文件浏览器

echo " ************************************************** "
echo "                                                    "
echo "                 开始安装文件浏览器                     "
echo "                                                    "
echo " ************************************************** "
sudo apt-get install doublecmd-gtk 


#### 安装Ubuntu-make 
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y 
sudo apt-get update 
sudo apt-get install ubuntu-make 

#### 安装indicator-network-speed
sudo add-apt-repository ppa:fixnix/netspeed 
sudo apt-get update 
sudo apt-get install indicator-netspeed-unity


echo " *************************************************  "
echo " 安装zeal  文档管理工具 "
echo " *************************************************  "
sudo add-apt-repository ppa:zeal-developers/ppa -y
sudo apt-get update
sudo apt-get install zeal
