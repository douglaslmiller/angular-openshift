FROM nginx

## Copy our nginx config
COPY nginx/ /etc/nginx/conf.d/

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

## copy over the artifacts in dist folder to default nginx public folder
COPY dist/angular-openshift/ /usr/share/nginx/html

EXPOSE 8080:8080

CMD ["nginx", "-g", "daemon off;"]
