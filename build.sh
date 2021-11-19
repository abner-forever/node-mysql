#!/usr/bin/env bash
# 上传本地项目到远端服务器
if [ $? = '0' ];then
echo "删除成功 $?"
else 
echo "删除失败"
fi
tar -zcvf node-mysql.tar.gz --exclude=node_modules ./

echo 打包成功

echo 解压中...
if [ ! -f "./dist" ];then
  mkdir ./dist
else
  rm -f ./dist
fi

tar zxvf ./node-mysql.tar.gz -C ./dist  # 解压文件到指定位置

if [ $? = '0' ];then
echo "解压成功～"
else 
echo "解压失败！"
exit
fi
echo 清除缓存。。。
rm -f *.tar.gz
echo 缓存清楚成功，退出脚本～