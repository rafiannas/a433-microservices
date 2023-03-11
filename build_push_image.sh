docker build item-app:v1 .        #menjalaskan pembuatan Docker image bernama item-app dan memiliki tag v1

docker images           #menjelaskan melihat daftar image yang dimiliki

docker tag item-app:v1 rafiannas/item-app     #menjelaskan perubahan nama image agar sesuai dengan format docker hub

echo $PASSWORD_DOCKER_HUB | docker login -u rafiannas --password-stdin      #login ke docker hub

docker push rafiannas/item-app         #menjelaskan pengunggahan image ke docker hub