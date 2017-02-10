FROM node:4-onbuild

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app/
#CMD [ "npm", "run", "build" ]
RUN npm run build

CMD [ "npm", "run", "serve" ]
EXPOSE 8080