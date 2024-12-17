FROM node 

WORKDIR /app

# copy the pakage first, because it will not run npm install again when we change code
COPY package.json /app 

RUN npm install

COPY . /app

# For documentation method, must use "docker run -p"
EXPOSE 80

CMD [ "node", "server.js" ]