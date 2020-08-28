FROM nginx:latest
ARG APP_NAME
ENV APP_NAME $APP_NAME

COPY conf/app.conf.template /etc/nginx/conf.d/app.conf.template

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN ["chmod", "+x", "/docker-entrypoint.sh"]
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
