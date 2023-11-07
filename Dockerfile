# Start with the official Node.js 20 LTS base image
FROM node:20

# Set the working directory in the Docker container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json from your project into the filesystem of the container
COPY package*.json ./

# Install the Node.js dependencies defined in package-lock.json
RUN npm install

# Copy the rest of your project into the container
COPY . .

# Inform Docker that the container listens on port 3000 at runtime
EXPOSE 3000

# Define the command to run your app using npm start
CMD [ "npm", "start" ]
