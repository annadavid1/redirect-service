FROM nginx:alpine

RUN printf 'server {\n\
    listen 80;\n\
    server_name _;\n\
    return 301 https://abc.abcdef.org$request_uri;\n\
}\n' > /etc/nginx/conf.d/default.conf
