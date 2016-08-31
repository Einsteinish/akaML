#retrieve a node server. Its OS should be ubuntu. 
FROM node

#Add my app folder to my node server
ADD . /app

WORKDIR /app

RUN npm install

#expose a port to allow external access
EXPOSE 3000

#Start my node application
CMD ["node", "server.js"] 
