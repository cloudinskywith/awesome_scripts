#!/bin/sh 


#在Ubuntu上批量生成缩略图
# $0表示脚本本身 $1-$9表示命令行的参数
# convert命令是通过 sudo apt-get install imagemagick 来的
# 基本用法是 convert -resize 16X16 source.png dest.extension 
# 再将该脚本放到自定义脚本目录(一般是/usr/local/bin 在运行下chmod +x png_convert.sh)，就可以全局使用了，good to go

for i in "16X16" "48X48" "64X64" "128X128"
do 
   convert -resize $i $1 $i.png   
done 
