#!/bin/bash


echo "自动导入库表"




config_mysql(){

echo "开始下载SQL文件"

rm -rf shortvideo.sql

wget --no-check-certificate https://github.com/GuoJiafeng/ShortVideoProject/releases/download/1.1/shortvideo.sql

echo "SQL文件下载完成"

sleep 1


echo "正在创建数据库"
sleep 1

echo "请输入数据库密码"

mysql -uroot -p  -e "create database  if not  exists shortvideo;"

echo "数据库创建完成"

echo "正在导入数据库"
sleep 1

echo "请输入数据库密码"
mysql -uroot -p  -f shortvideo -e "source  $(pwd)/shortvideo.sql"

echo "导入数据完成"


}










config_mysql





