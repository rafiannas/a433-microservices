docker build -t rafiannas/karsajobs-ui:latest .

echo $PASSWORD_DOCKER_HUB | docker login -u rafiannas --password-stdin

docker push rafiannas/karsajobs-ui:latest