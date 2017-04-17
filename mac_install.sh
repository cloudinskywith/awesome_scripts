## install homebrew ## 
echo “installing homebrew”
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo “finish homebrew installation”
echo “#########################################################”

## 安装wget ## 
echo “installing wget”
brew install wget
echo “finish wget installation”
echo “#########################################################”

## 安装python
echo “installing python”
brew install python 
echo “finish python installation”
echo “#########################################################”

pip install bpython
echo “finish bpython installation”
echo “#########################################################”

## 安装nodes 
echo “installing nodejs”
brew install nodejs 
echo “finish nodejs installation”
echo “#########################################################”

npm install webpack -g 
npm install gulp -g 
npm install yarn -g 
echo “finish npm package installation”
echo “#########################################################”

## 安装git
brew install git 
echo “finish git installation”
echo “#########################################################”



## 安装atom
brew install Caskroom/cask/atom  
echo “finish atom installation”
echo “#########################################################”


## 安装iterm2
brew install iterm2 
echo “finish iterm2 installation”
echo “#########################################################”

## 安装zsh
brew install zsh 
echo “finish zsh installation”
echo “#########################################################”

## 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo “finish oh my zsh installation”
echo “#########################################################”

## 安装mysql 
brew install mysql 
echo “finish mysql installation”
echo “#########################################################”

## 安装Apache2
brew tap homebrew/apache 
brew install homebrew/apache/httpd24 
echo “finish apache installation”
echo “#########################################################”


## 安装php
brew tap homebrew/homebrew-php 
echo “finish apache2 installation”
echo “#########################################################”
