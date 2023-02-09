# Use the official Ubuntu image as the base image
FROM ubuntu:20.04

# Install Apache and other dependencies
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose port 80 for incoming traffic
EXPOSE 80

# Start Apache when the container starts
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]




