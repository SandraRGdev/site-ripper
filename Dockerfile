FROM nginx:alpine

# Copy the site files to nginx html directory
COPY lacreativaperfecta.com/ /usr/share/nginx/html/

# Configure nginx to listen on port 8081
RUN sed -i 's/listen 80;/listen 8081;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
