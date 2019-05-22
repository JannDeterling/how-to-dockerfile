# Use an official Nginex distribution as a parent image
FROM nginx

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the static directory contents into the container at /usr/share/nginx/html
COPY ./static /usr/share/nginx/html

# Make port 8080 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NGINX_PORT 80

# Run app.py when the container launches
CMD ["nginx", "-g", "daemon off;"]
