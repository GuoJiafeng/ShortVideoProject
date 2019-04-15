#!/bin/bash



config_java(){

read -p "请输入项目的WEB端口号(默认1211):" webport

read -p "请输入数据库密码(默认yhm1211):" mysqlpass

read -p "请输入项目域名(默认ShortVideoProject):" contextpath

read -p "请输入Enter确认启动项目"


nohup java -jar ShortVideoProject.jar --spring.datasource.password=${mysqlpass} --server.port=${webport} --server.context-path=/${contextpath} &

sleep 2
echo -e "脚本结束，请输入当前ip地址加 端口号：${webport}/${contextpath}/index.jsp  即可访问项目"

sleep 2
echo -e "停止项目请通过JPS获取端口，通过kill -9结束进程"

sleep 2
echo -e "再次启动项目请通过runner.sh 启动项目"

}

config_java