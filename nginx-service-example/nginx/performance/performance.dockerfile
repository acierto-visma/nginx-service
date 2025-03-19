FROM nginx:latest

# Copy index.html to the default nginx web directory
COPY performance.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
