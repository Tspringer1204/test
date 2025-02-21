# Dockerfile - minimal example
FROM alpine:latest

LABEL maintainer="Your Name <you@example.com>"

# Install something trivial (e.g. curl) to show a "build" step
RUN apk --no-cache add curl

# When the container runs, just print a message
CMD ["echo", "Docker build complete. Container is running!"]
