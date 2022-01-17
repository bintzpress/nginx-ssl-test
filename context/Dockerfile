ARG NGINX_TAG

FROM nginx:${NGINX_TAG}

COPY ./bin/custom-docker-entrypoint.sh /usr/local/bin/custom-docker-entrypoint.sh
COPY ./nginx.conf /etc/nginx/conf.d/nginx.temp
COPY ./html/index.html /

RUN chown root:root /usr/local/bin/custom-docker-entrypoint.sh && \
    chmod 775 /usr/local/bin/custom-docker-entrypoint.sh && \
    chown nginx:nginx /etc/nginx/conf.d/nginx.temp && \
    chmod 644 /etc/nginx/conf.d/nginx.temp && \
    mkdir -p /var/www/html && \
    chmod 775 /var/www && \
    chmod 775 /var/www/html && \
    mv /index.html /var/www/html/index.html && \
    chmod 644 /var/www/html/index.html && \
    chown -R nginx:nginx /var/www/html
    
ENTRYPOINT ["/usr/local/bin/custom-docker-entrypoint.sh"]