# Set the base image to use
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Run the command when the container starts
CMD ["echo", "Hello, World!"]
