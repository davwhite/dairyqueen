podman run -d --name jenkins -p 18080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins
