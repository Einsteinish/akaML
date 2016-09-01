# Tells the Docker which base image to start.
FROM node

# Adds files from the host file system into the Docker container.  
ADD . /app

# Sets the current working directory for subsequent instructions
WORKDIR /app

RUN npm install
RUN npm install -g bower
RUN bower install --allow-root
RUN npm install -g nodemon

#expose a port to allow external access
EXPOSE 3000

# Start mean application
CMD ["nodemon", "server.js"] 
