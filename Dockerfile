FROM node 

WORKDIR /app

COPY . /app

RUN npm install

# For documentation method, must use "docker run -p"
EXPOSE 80

CMD [ "node", "server.js" ]