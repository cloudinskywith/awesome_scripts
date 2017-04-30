## install homebrew ##
echo "installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "finish homebrew installation"
echo "#########################################################"

## 安装wget ##
echo "installing wget"
brew install wget
echo "finish wget installation"
echo "#########################################################"

## 安装python
echo "installing python"
brew install python
echo "finish python installation"
echo "#########################################################"

pip install bpython
echo "finish bpython installation"
echo "#########################################################"

## 安装nodes
echo "installing nodejs"
brew install nodejs
echo "finish nodejs installation"
echo "#########################################################"

## 其他node全局模块
npm install -g cnpm --registry=http://registry.npm.taobao.org 
npm config set registry "https://registry.npm.taobao.org"
node install -g electron-prebuilt 



npm install webpack -g
npm install gulp -g
npm install yarn -g
echo "finish npm package installation"
echo "#########################################################"

## 安装git
brew install git
echo "finish git installation"
echo "empower git with hub"
brew install hub
alias git=hub
echo "#########################################################"



## 安装atom
brew install Caskroom/cask/atom
echo "finish atom installation"

echo "config atom"
touch ~/.atom/.apmrc
echo "registry=https://registry.npm.taobao.org/" >> ~/.atom/.apmrc
echo "strict-ssl=false" >> ~/.atom/.apmrc
echo "finish atom configuration"
echo "install some apm package"
apm install emmet
apm install color-picker
apm install atom-html-preview
apm install d3-snippets
echo "#########################################################"


## 安装iterm2
brew install iterm2
echo "finish iterm2 installation"
echo "#########################################################"

## 安装zsh
brew install zsh
echo "finish zsh installation"
echo "#########################################################"

## 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "finish oh my zsh installation"
echo "#########################################################"

## 安装mysql
brew install mysql
echo "finish mysql installation"
echo "#########################################################"

## 安装Apache2
brew tap homebrew/apache
brew install homebrew/apache/httpd24
echo "finish apache installation"
echo "#########################################################"


## 安装php
brew tap homebrew/homebrew-php
echo "finish apache2 installation"
echo "#########################################################"
