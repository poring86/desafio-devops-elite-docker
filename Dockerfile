# Especify a base image for use
FROM node:14-alpine

# Define a work directory
WORKDIR /app

#Install dependencies
COPY ./src/package.json ./
RUN npm install
COPY ./src/ ./

# Especify the port
EXPOSE 8080

# Start the project
CMD ["npm", "start"]