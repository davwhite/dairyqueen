helm repo add bitnami https://charts.bitnami.com/bitnami
helm install dq-nginx -f values.yaml bitnami/nginx