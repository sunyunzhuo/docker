#!/usr/bin/env bash

echo "###########环境变量说明###########"

export MYSQL_USER=root
echo "MYSQL_USER: 配置的Mysql的初始用户名, 默认是 root , 不可修改"
export CATALINA_OPTS="-Xms1536m -Xmx1536m"
echo "JVM 最大堆大小为 1.5G"

if [[ ! -n $MYSQL_PASSWORD ]]; then
	export MYSQL_PASSWORD=flow.ci
fi
echo "MYSQL_PASSWORD: 配置的Mysql的初始密码, 默认是 flow.ci , 当前参数是 $MYSQL_PASSWORD"

if [[ ! -n $FLOW_API_DOMAIN ]]; then
	export FLOW_API_DOMAIN=127.0.0.1
fi
echo "FLOW_API_DOMAIN: 部署的FlowApi地址, 默认是 127.0.0.1, 当前参数值是 ${FLOW_API_DOMAIN}"

if [[ ! -n $FLOW_WEB_DOMAIN ]]; then
	export FLOW_WEB_DOMAIN=127.0.0.1
fi
echo "FLOW_WEB_DOMAIN: 部署的FlowWeb地址, 默认是 127.0.0.1, 当前参数值是 $FLOW_WEB_DOMAIN"

if [[ ! -n $FLOW_SYS_EMAIL ]]; then
	export FLOW_SYS_EMAIL=admin@flow.ci
fi
echo "FLOW_SYS_EMAIL: Flow 的系统账号， 默认是 admin@flow.ci, 当前参数值是 $FLOW_SYS_EMAIL"

if [[ ! -n $FLOW_SYS_USERNAME ]]; then
	export FLOW_SYS_USERNAME=admin
fi
echo "FLOW_SYS_USERNAME: Flow 的系统用户名， 默认是 admin, 当前参数值是 $FLOW_SYS_USERNAME"

if [[ ! -n $FLOW_SYS_PASSWORD ]]; then
	export FLOW_SYS_PASSWORD=123456
fi
echo "FLOW_SYS_PASSWORD: Flow 的系统密码， 默认是 123456, 当前参数值是 $FLOW_SYS_PASSWORD"




docker-compose up


