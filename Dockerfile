# Use a small Linux base image
FROM alpine:latest

# Set working directory inside the container
WORKDIR /app

# Copy all files from current directory to container
COPY . .

# Example: run a simple command when container starts
CMD ["echo", "Hello, Docker!"]
