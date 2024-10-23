# Deployment

This repository contains the files for local, testing and production deployment

## Folder Structure

```
🗂️── k8s                     Kubernetes YML files for deployment
|  ├──🗂️ local               k8 local files for deployment to minikube
|  ├──🗂️ test                k8 yml files for deployment to DigitalOcean test environment
|  ├──🗂️ prod                k8 yml files for deployment to DigitalOcean prod environment
🗂️── scripts                 Holds scripts (e.g. for database initialisation)
🗂️── iac                     Holds terraform IAC scripts
└── docker-compose.yml       For local development and testing using docker containers
```

## Commands

### Docker

```sh
# starts up services in listed in `docker-compose.yml`
docker-compose up

# starts up services detached listed in `docker-compose.yml`
docker-compose up -d

# stops the services listed in `docker-compose.yml`
docker-compose down
```

### Load Test

[Artillery](https://artillery.io/) is used as the tool for load testing. Ensure that Artillery is [installed](https://www.artillery.io/docs/get-started/get-artillery) before running the script below.


```sh
# install
npm install -g artillery  

# notice: make sure plug-in and artillery in same env if you want to add plug-in, (both global or both local), otherwise it will be error. 

# starts up artillery
artillery run load-test.yml
```

## Continuous Delivery

Continuous Deployment is done using [ArgoCD](https://argo-cd.readthedocs.io/en/stable/).

This repository is the target repository for both [frontend](https://github.com/mtechse-dmss-capstone/frontend) and [backend](https://github.com/mtechse-dmss-capstone/backend) to update the image versions of the kubernetes YML files. Upon a successful merge of a pull request to the main branch in the frontend/backend repository, the CI pipeline will update the image version of the kubernetes YML files in this repository. There will be an ArgoCD agent in the kubernetes cluster on hosted on DigitalOcean which listens to version changes in this repository. 