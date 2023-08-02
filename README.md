# inception

### Nginx Setup

Start by creating a configuration file that defines a virtual host. 
Next, build a script to generate a self-signed certificate SSL for the server.
Create a Dockerfile, and establish the base image, specify commands for installing nginx and openssl packages within the container. Ensure port 443 is open, include the script in a location /var/www/. Conclude with outlining a bash command along with the script as an argument, to be executed upon launching the container.

### WordPress Setup 

Create a directives file named www.conf, enabling the operation of multiple child process with distinct configurations.
Create a wp-config.php file, a fundamental component for all standalone WordPress sites. 
Create a script for establishing a command-line interface for WordPress and creating two users, one of whom will serve as your WordPress database administrator.
