helm repo add bitnami https://charts.bitnami.com/bitnami
helm install dq-mysql -f values.yaml bitnami/mysql