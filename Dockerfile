#stage 1 build app using node
FROM node:latest as app-build
WORKDIR  /app
# COPY package*.json ./
COPY . ./
RUN npm install
RUN npm run build

#stage 2 deploy app to nginx container
FROM nginx:alpine
COPY --from=app-build /app/dist/angular-startup/browser /usr/share/nginx/html

# fix nginx routing issue
COPY ./deployment/nginx-default.conf /etc/nginx/conf.d/default.conf

# run docker file
# docker build -t "angular-ui" .
# docker run -d -p4200:80 --name "ui-app-deploy" angular-ui:latest