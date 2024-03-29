# Use the official Node.js image as the base
FROM public.ecr.aws/docker/library/node:hydrogen-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the application files (package.json and app.js)
COPY package*.json ./
COPY index.js ./

# Install dependencies
RUN npm install

# Expose port 3000 where the application will listen
EXPOSE 80

# Start the application by running the Node.js script
CMD [ "node", "index.js" ]
