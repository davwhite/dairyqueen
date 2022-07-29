#podman run -d -p 18081:80 \
# -v /home/davwhite/workspace/deque/nginx/podman/nginx.conf:/etc/nginx/nginx.conf\
# -v /home/davwhite/workspace/deque/nginx/podman/content:/usr/share/nginx/html\
# --name nginx dq-nginx:latest

podman pod create --name=nginx_test --share net -p 0.0.0.0:8083:8080

podman run \
    --name=nginx \
    -d  \
    --pod=nginx_test \
    --mount type=bind,source=nginx.conf,destination=/etc/nginx/conf.d  \
    --mount type=bind,source=content,destination=/var/www/application  \
    --add-host nginx:127.0.0.1  \
    --add-host nginx_test_nginx_1:127.0.0.1  \
    nginx:1.23.1
