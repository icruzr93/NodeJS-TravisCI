FROM node:6-alpine

# Create a server directory
RUN mkdir -p /app
WORKDIR /app

# Install server dependencies
COPY package.json /app
RUN npm install

# Get all the code needed to run the app
COPY . /app

# Open port
EXPOSE 9000

CMD ["npm", "start"]