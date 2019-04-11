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

		echo "开始安装Java"
		install_java
			break

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
		echo "开始安装Mysql"

		install_mysql
			break

		else
			error
		fi

	done
}




error() {

	echo -e "\n$red 输入错误！$none\n"
	exit -1

}

initenv(){
wget http://mirrors.163.com/.help/CentOS6-Base-163.repo
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
mv CentOS6-Base-163.repo /etc/yum.repos.d/
yum clean all
yum makecache

yum install lib*
yum install -y git redhat-lsb curl gawk tar httpd-devel unzip expect
yum install wget tar gcc gcc-c++ openssl openssl-devel pcre-devel python-devel libevent automake autoconf libtool make -y
yum update -y


}

install_java(){

if [[ -f /usr/bin/java ]]; then
        install_bc
        java_version=`/usr/bin/java -version 2>&1 | awk -F '\"' 'NR==1{print $2}' | awk -F '.' '{OFS="."; print $1,$2;}'`
        require_version=1.8
        is_ok=`echo "$java_version>=$require_version" | bc`
        if [[ is_ok -eq 1 ]]; then
	    echo -e "${green}已检测到1.8及以上版本的java，无需重复安装${plain}"
	else
	    echo -e "错误：${green}/usr/bin/java${red}的版本低于1.8，请安装大于等于1.8版本的java${plain}"
	    exit -1
	fi
    elif [[ x"${release}" == x"centos" ]]; then
        yum install java-1.8.0-openjdk curl -y
    elif [[ x"${release}" == x"debian" || x"${release}" == x"ubuntu" ]]; then
        apt install default-jre curl -y
    fi
    if [[ $? -ne 0 ]]; then
        echo -e "${red}Java环境安装失败，请检查错误信息${plain}"
        exit 1
    fi


}

install_bc() {
    command -v bc >/dev/null 2>&1 || yum install bc -y || apt install bc -y
}

install_mysql(){

wget http://mirrors.sohu.com/mysql/MySQL-5.5/MySQL-client-5.5.61-1.el6.x86_64.rpm
wget http://mirrors.sohu.com/mysql/MySQL-5.5/MySQL-server-5.5.61-1.el6.x86_64.rpm
rpm -ivh MySQL-client-5.5.61-1.el6.x86_64.rpm
rpm -ivh MySQL-server-5.5.61-1.el6.x86_64.rpm


mysqld_safe --skip-grant-table

echo "mysql 已经启动！，开始修改密码"

read -p "请输入您想要修改的密码："  mysqlpass01
read -p "请输入ENTER继续"

#mysql -uroot -e "use mysql;"

mysql -f mysql -e "UPDATE user SET Password=PASSWORD('${mysqlpass01}') where USER='root'"

mysql  -e "flush privileges;"

service mysql restart

}



initenv


isMysql

isJava
