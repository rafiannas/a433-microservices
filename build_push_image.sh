docker build item-app:v1 .        #menjalaskan pembuatan Docker image bernama item-app dan memiliki tag v1

docker images           #menjelaskan melihat daftar image yang dimiliki

#karena perbaikan .. jadi syntax dimulai dari sini, tidak dari awal
docker tag rafiannas/item-app:v1 rafiannas/item-app:v2     #menjelaskan perubahan nama image agar sesuai dengan format docker hub

echo $PASSWORD_DOCKER_HUB | docker login -u rafiannas --password-stdin      #login ke docker hub

docker push rafiannas/item-app:v2         #menjelaskan pengunggahan image ke docker hub