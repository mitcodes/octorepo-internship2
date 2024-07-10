# Define the base image
FROM ubuntu:latest

# Update the package list
RUN apt-get update

# Install a sample package
RUN apt-get install -y nginx

# Copy a sample web page
COPY index.html /var/www/html

# Expose the web server port
EXPOSE 80

# Set the default command to run the web server
CMD ["nginx", "-g", "daemon off;"]


