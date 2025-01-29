FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.zcfrk.mongodb.net
ENV MONGODB_USERNAME hariloganathan88
ENV MONGODB_PASSWORD kbUy3Fs01yepNBMx

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]