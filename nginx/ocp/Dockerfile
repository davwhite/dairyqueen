# FROM docker.io/library/nginx:1.23.1
# # COPY nginx.conf /etc/nginx/nginx.conf
# # COPY default.conf /etc/nginx/conf.d/default.conf
# COPY index.html /usr/share/nginx/html/index.html
# # WORKDIR /code
# # COPY --from=BUILD /usr/src/app/dist .
# EXPOSE 8080
# CMD ["nginx", "-g", "daemon off;"]




FROM nginx:1.23.1

# support running as arbitrary user which belogs to the root group
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx
# users are not allowed to listen on priviliged ports
RUN sed -i.bak 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
# comment user directive as master process is run as user in OpenShift anyhow
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf

