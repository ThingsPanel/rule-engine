# from 构建镜像的基础源镜像 该image镜像文件继承官方的node image
# FROM node:16.14.2-alpine3.15
FROM nikolaik/python-nodejs:python3.10-nodejs16-alpine
# 在容器中创建一个目录
RUN mkdir -p /usr/src/app/
# 定位到容器的工作目录
WORKDIR /usr/src/app/
# 把当前目录下所有的文件拷贝到 Image 的 /usr/src/app/目录下
COPY . .
RUN npm config set registry http://registry.npm.taobao.org/
#RUN npm install
RUN npm install
EXPOSE 1880
CMD ["npm", "start"]
