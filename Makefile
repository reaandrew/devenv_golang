.PHONY: build
build: 
	packer build -var "tag=`cat VERSION`" packer.json

.PHONY: docker_tag
docker_tag:
	echo "docker tagging with `cat VERSION`"
	docker tag reaandrew/devenv_golang reaandrew/devenv_golang:`cat VERSION`

.PHONY: docker_push
docker_push:
	docker push reaandrew/devenv_golang:`cat VERSION`

