#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20220814.sql ./mysql/db
cp ../sql/ry_config_20220510.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../iiss-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy iiss-gateway "
cp ../iiss-gateway/target/iiss-gateway.jar ./iiss/gateway/jar

echo "begin copy iiss-auth "
cp ../iiss-auth/target/iiss-auth.jar ./iiss/auth/jar

echo "begin copy iiss-visual "
cp ../iiss-visual/iiss-monitor/target/iiss-visual-monitor.jar  ./iiss/visual/monitor/jar

echo "begin copy iiss-modules-system "
cp ../iiss-modules/iiss-system/target/iiss-modules-system.jar ./iiss/modules/system/jar

echo "begin copy iiss-modules-file "
cp ../iiss-modules/iiss-file/target/iiss-modules-file.jar ./iiss/modules/file/jar

echo "begin copy iiss-modules-job "
cp ../iiss-modules/iiss-job/target/iiss-modules-job.jar ./iiss/modules/job/jar

echo "begin copy iiss-modules-gen "
cp ../iiss-modules/iiss-gen/target/iiss-modules-gen.jar ./iiss/modules/gen/jar

