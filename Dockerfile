# Use an official Node.js runtime as a parent image
FROM node:current-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the HTML and CSS files to the container
COPY . .

# Expose port 80 for the application
EXPOSE 80

# Serve the HTML and CSS files using the http-server package
RUN npm install -g http-server
CMD [ "http-server", "-p", "80" ]
