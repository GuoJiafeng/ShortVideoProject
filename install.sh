#!/bin/bash


echo "此项目需要安装Java和Mysql"

config_java(){

service iptables stop

echo "配置Github加速"


config_github


sleep 1

echo "开始下载项目"
sleep 1

rm -rf ShortVideoProject.jar

#wget https://gitee.com/GuoJiafeng/SoftwareWarehouse/raw/master/ShortVideoProject.jar
#更新为码云国内直链
wget -c "http://files.git.oschina.net/group1/M00/07/4A/PaAvDFyv842ADqR5AutSi-zsIwU738.jar?token=b3bd5763004883d785b3f7bb04cee663&ts=1555039189&attname=ShortVideoProject.jar&disposition=attachment" -O ShortVideoProject.jar


echo "项目下载完成"

sleep 1

read -p "请输入项目的WEB端口号(默认1211):" webport

read -p "请输入数据库密码(默认yhm1211):" mysqlpass

read -p "请输入项目域名(默认ShortVideoProject):" contextpath

read -p "请输入Enter确认启动项目"


nohup java -jar ShortVideoProject.jar --spring.datasource.password=${mysqlpass} --server.port=${webport} --server.context-path=/${contextpath} &

echo "开始下载Runner.sh"
sleep 1

wget  https://raw.githubusercontent.com/GuoJiafeng/ShortVideoProject/master/runner.sh

echo  "Runner.sh下载完成"
sleep 2

echo -e "脚本结束，请输入当前ip地址加 端口号：${webport}/ShortVideoProject/index.jsp  即可访问项目"

sleep 2
echo -e "停止项目请通过JPS获取端口，通过kill -9结束进程"

sleep 2
echo -e "再次启动项目请通过runner.sh 启动项目"

}


config_mysql(){

echo "开始下载SQL文件"

rm -rf shortvideo.sql

wget https://github.com/GuoJiafeng/ShortVideoProject/releases/download/1.1/shortvideo.sql

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


config_github(){



echo

	while :; do
		echo -e "请问您是否需要配置Github 加速${yellow}Java${none} [${magenta}Y/N$none]"
		read -p "$(echo -e "(默认 [${cyan}N$none]):") " configgithub
		[[ -z "$configgithub" ]] && configgithub="n"
		if [[ "$configgithub" == [Yy] ]]; then
			echo
echo "151.101.72.249 http://global-ssl.fastly.net
192.30.253.112 http://github.com
192.30.253.119 gist.github.com
151.101.100.133 assets-cdn.github.com
151.101.100.133 raw.githubusercontent.com
151.101.100.133 gist.githubusercontent.com
151.101.100.133 cloud.githubusercontent.com
151.101.100.133 camo.githubusercontent.com
151.101.100.133 avatars0.githubusercontent.com
151.101.100.133 avatars1.githubusercontent.com
151.101.100.133 avatars2.githubusercontent.com
151.101.100.133 avatars3.githubusercontent.com
151.101.100.133 avatars4.githubusercontent.com
151.101.100.133 avatars5.githubusercontent.com
151.101.100.133 avatars6.githubusercontent.com
151.101.100.133 avatars7.githubusercontent.com
151.101.100.133 avatars8.githubusercontent.com
192.168.31.170 windows10.microdone.cn " >> /etc/hosts

service network restart

echo "配置Github结束"
			break
		elif [[ "$configgithub" == [Nn] ]]; then

		break

		else
			error
		fi
	done





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

yum update -y


}

install_bc() {
    command -v bc >/dev/null 2>&1 || yum install bc -y || apt install bc -y
}
install_java(){

  yum install java-1.8.0-openjdk curl -y

   config_java

}



install_mysql(){

yum remove -y mysql*

rm -rf MySQL-*
rpm -e --nodeps MySQL-client-5.5.61-1.el6.x86_64
rpm -e --nodeps MySQL-server-5.5.61-1.el6.x86_64

wget http://mirrors.163.com/mysql/Downloads/MySQL-5.5/MySQL-client-5.5.61-1.el6.x86_64.rpm
wget http://mirrors.163.com/mysql/Downloads/MySQL-5.5/MySQL-server-5.5.61-1.el6.x86_64.rpm
rpm -ivh MySQL-client-5.5.61-1.el6.x86_64.rpm
rpm -ivh MySQL-server-5.5.61-1.el6.x86_64.rpm


nohup mysqld_safe --skip-grant-table &
sleep 1

echo "mysql 已经启动！，开始修改密码"
sleep 1

read -p "请输入您想要修改的密码："  mysqlpass01
read -p "请输入ENTER继续"

#mysql -uroot -e "use mysql;"

mysql -f mysql -e "UPDATE user SET Password=PASSWORD('${mysqlpass01}') where USER='root'"

mysql  -e "flush privileges;"

service mysql restart


config_mysql

}



#initenv


isMysql

isJava
