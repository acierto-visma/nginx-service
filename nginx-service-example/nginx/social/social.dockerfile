FROM nginx:latest

# Copy social.html to the default nginx web directory
COPY social.html /usr/share/nginx/html/social.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
