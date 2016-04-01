
# remove unused images
# http://stackoverflow.com/questions/32723111/how-to-remove-old-and-unused-docker-images

docker rmi $(docker images --filter "dangling=true" -q --no-trunc)

# alias drmae='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
