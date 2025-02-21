FROM alpine:latest

# Install Node.js and npm
RUN apk add --no-cache nodejs npm curl

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy all project files
COPY . .

# Run tests inside the container
CMD ["npm", "test"]

