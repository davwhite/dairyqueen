helm repo add jenkins https://charts.jenkins.io
helm repo update
helm install dq-jenkins -f values.yaml jenkins/jenkins