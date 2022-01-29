FROM node:16

RUN mkdir /app

WORKDIR /app

COPY jenkins-web-app/package.json /app

RUN npm install

COPY jenkins-web-app/ /app

EXPOSE 3000

CMD ["npm","start"]