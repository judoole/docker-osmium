DOCKERHUB_USERNAME=unacast
DOCKERHUB_REPO=osmium
DOCKERHUB_TAG=latest
DOCKERHUB_TAG_RELEASE=0.1.0

help:
	echo "This is to create the docker image and tag into Dockerhub."
	echo "Use make build, tag, push accordingly"

build:
	docker build -t $(DOCKERHUB_USERNAME)/$(DOCKERHUB_REPO):$(DOCKERHUB_TAG) .

tag:
	docker tag $(DOCKERHUB_USERNAME)/$(DOCKERHUB_REPO):$(DOCKERHUB_TAG) $(DOCKERHUB_USERNAME)/$(DOCKERHUB_REPO):$(DOCKERHUB_TAG_RELEASE)

push:
	docker push $(DOCKERHUB_USERNAME)/$(DOCKERHUB_REPO):$(DOCKERHUB_TAG)
	docker push $(DOCKERHUB_USERNAME)/$(DOCKERHUB_REPO):$(DOCKERHUB_TAG_RELEASE)