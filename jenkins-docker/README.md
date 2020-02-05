docker build . --tag pedrobelmino/jenkins-kube:2.0.0
docker push pedrobelmino/jenkins-kube:2.0.0
docker run --name docker-jenkins-200 -d -p 8083:8080 -v jenkins_home_200:/var/jenkins_home -v jenkins_backup_200:/srv/backup pedrobelmino/jenkins-kube:2.0.0# docker
