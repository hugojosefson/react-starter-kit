FROM node:8.1.0-alpine

# Set a working directory
WORKDIR /usr/src/app

COPY ./build/package.json .

# Install Node.js dependencies
RUN npm install --production

# Copy application files
COPY ./build .

CMD [ "node", "server.js" ]
