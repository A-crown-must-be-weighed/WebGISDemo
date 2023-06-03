# 设置基础镜像
FROM node:17.0.1-alpine

# 定义作者
MAINTAINER geyw

# 指定用户执行
USER root

# node:17.x设置环境变量
ENV NODE_OPTIONS=--openssl-legacy-provider


# 设置工作目录
WORKDIR /app

# 将项目文件复制到镜像中
COPY . .

# 安装项目依赖
RUN npm install

# 暴露应用程序的端口
EXPOSE 8080

# 启动应用程序
CMD npm run serve