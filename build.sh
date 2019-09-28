# 未登录则先登录
# docker login --username=xxxx registry.cn-hangzhou.aliyuncs.com
export ALIYUN_DOCKER_CLOUD_URL=registry.cn-hangzhou.aliyuncs.com
export DOCKER_IMAGE_NAME=yimocoding/dotnet2.2.2-base
export BUILD_NUMBER=latest

docker build -t $DOCKER_IMAGE_NAME -f ./Dockerfile .
docker tag $DOCKER_IMAGE_NAME $ALIYUN_DOCKER_CLOUD_URL/$DOCKER_IMAGE_NAME:$BUILD_NUMBER
echo 推送镜像到云端
docker push $ALIYUN_DOCKER_CLOUD_URL/$DOCKER_IMAGE_NAME:$BUILD_NUMBER

echo '删除本地镜像'
docker rmi $DOCKER_IMAGE_NAME
docker rmi $ALIYUN_DOCKER_CLOUD_URL/$DOCKER_IMAGE_NAME:$BUILD_NUMBER
