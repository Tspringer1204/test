FROM alpine:latest

# Install Node.js and npm
RUN apk add --no-cache nodejs npm curl

# Set working directory (Optional)
WORKDIR /app

# Copy your application files
COPY . .

# Set default command (Optional, depends on your project)
CMD ["node", "--version"]

