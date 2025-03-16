FROM ubi8/nodejs-14:latest

# Create app directory
WORKDIR /opt/app-root/src

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
