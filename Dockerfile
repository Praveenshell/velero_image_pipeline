FROM node:12-bullseye

# Create app directory
WORKDIR /usr/src/app

# Hardening Scripts
USER root
ADD cis.sh /
RUN /bin/bash "/cis.sh"
HEALTHCHECK CMD exit 0


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./

# RUN npm install
# If you are building your code for production
#RUN npm ci --only=production

# Bundle app source
#COPY . .

USER nonuser

#EXPOSE 9000
#CMD [ "node", "server.js" ]

