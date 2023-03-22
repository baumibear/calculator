FROM node:19

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production
#RUN npm install --only=production
COPY . .

EXPOSE 3000

#USER 1000 

CMD [ "npm", "start" ]
