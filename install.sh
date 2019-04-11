#!/bin/bash


echo "此项目需要安装Java和Mysql"

config_java(){

echo "开始下载项目"

wget https://github.com/GuoJiafeng/ShortVideoProject/releases/download/1.1/ShortVideoProject.jar

echo "项目下载完成"



read -p "请输入项目的WEB端口号(默认1211):" webport

read -p "请输入数据库密码(默认yhm1211):" mysqlpass

read -p "请输入项目域名(默认ShortVideoProject):" contextpath

read -p "请输入Enter确认启动项目"


nohup java -jar ShortVideoProject.jar --spring.datasource.password=${mysqlpass} --server.port=${webport} --server.context-path=${contextpath} &

echo "开始下载Runner.sh"

wget  https://raw.githubusercontent.com/GuoJiafeng/ShortVideoProject/master/runner.sh

echo  "Runner.sh下载完成"

echo -e "脚本结束，请输入当前ip地址加 端口号：${webport}/ShortVideoProject/index.jsp  即可访问项目"

echo -e "停止项目请通过JPS获取端口，通过kill -9结束进程"

echo -e "再次启动项目请通过runner.sh 启动项目"

}


config_mysql(){

echo "开始下载SQL文件"

wget https://github.com/GuoJiafeng/ShortVideoProject/releases/download/1.1/shortvideo.sql

echo "SQL文件下载完成"




echo "正在创建数据库"

echo "请输入数据库密码"

mysql -uroot -p  -e "create database shortvideo"

echo "数据库创建完成"

echo "正在导入数据库"

echo "请输入数据库密码"
mysql -uroot -p  -f shortvideo -e "source  $(pwd)/shortvideo.sql"

echo "导入数据完成"


}



isJava() {

	echo

	while :; do
		echo -e "请问是否安装了${yellow}Java${none} [${magenta}Y/N$none]"
		read -p "$(echo -e "(默认 [${cyan}N$none]):") " isjava
		[[ -z "$isjava" ]] && isjava="n"
		if [[ "$isjava" == [Yy] ]]; then
			echo
		    config_java
			break
		elif [[ "$isjava" == [Nn] ]]; then
			break
			exit -1
		else
			error
		fi

	done

}


isMysql(){

echo

	while :; do
		echo -e "请问是否安装了${yellow}MySQL${none} [${magenta}Y/N$none]"
		read -p "$(echo -e "(默认 [${cyan}N$none]):") " ismysql
		[[ -z "$ismysql" ]] && ismysql="n"
		if [[ "$ismysql" == [Yy] ]]; then
			echo
		   config_mysql
			break
		elif [[ "$ismysql" == [Nn] ]]; then
			break
			exit -1
		else
			error
		fi

	done
}




error() {

	echo -e "\n$red 输入错误！$none\n"
	exit -1

}

install_java(){

wget

}

install_mysql(){

wget
}





isMysql

isJava
