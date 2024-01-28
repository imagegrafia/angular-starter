# FROM node:latest as node
FROM nginx:latest
# WORKDIR  /app
# COPY ./dist/angular-startup .
ADD ./dist/angular-startup/browser /usr/share/nginx/html
# only for document
EXPOSE 80 
# RUN [startup]
# CMD ["nginx", "-g", "daemon off;"]

# Docker build and run command

# docker run -itd -p 80:80 --name angular-3 angular
# docker run -itd -p --name angular-3 angular
# docker build  --no-cache -t angular .