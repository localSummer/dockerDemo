#制定node镜像的版本
FROM node:10.0.0

#声明作者
LABEL author="localSummer"

#移动当前目录下面的文件到app目录下
ADD . /home/wxw/tools/datafiles/dockerApps/apps/app01/

#进入到app目录下面，类似cd
WORKDIR /home/wxw/tools/datafiles/dockerApps/apps/app01

#安装依赖
RUN npm install

#对外暴露的端口
EXPOSE 8080

#程序启动脚本 使用["npm", "start"] 这种方式会报bin/sh错误
CMD npm start
