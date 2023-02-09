FROM scratch

# Copy the Apache binary and configuration files
COPY apache2 /usr/local/apache2

# Expose port 80 for incoming traffic
EXPOSE 80

# Start Apache when the container starts
CMD ["/usr/local/apache2/bin/httpd", "-D", "FOREGROUND"]



