docker build -t rafiannas/karsajobs:latest .

echo $PASSWORD_DOCKER_HUB | docker login -u rafiannas --password-stdin

docker push rafiannas/karsajobs:latest