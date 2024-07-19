FROM node:14

RUN mkdir /app

WORKDIR /app

COPY package.json .

RUN npm install

COPY . /app

EXPOSE 3000

ENV MYSQL_USERNAME admin
ENV MYSQL_ROOT_PASSWORD admin12345
ENV MYSQL_DATABASE cloud_test
ENV MYSQL_HOST database-demo.cde68680saq9.ap-south-1.rds.amazonaws.com
ENV MYSQL_LOCAL_PORT 3306
ENV MYSQL_DOCKER_PORT 3306
ENV NODEJS_LOCAL_PORT 3000

CMD [ "npm", "start" ]
