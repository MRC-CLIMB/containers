![Build Status](https://github.com/CLIMB-BIG-DATA/containers/workflows/build-push-quay/badge.svg)
# containers
Dockerfiles for CLIMB-BIG-DATA. Built and pushed to quay.io using GitHub Actions

## Pulling Docker images from Quay.io
The docker images are hosted by quay.io:

https://quay.io/organization/climb-big-data

E.g. to pull the latest image with docker:
```
docker pull quay.io/climb-big-data/trimgalore:latest
```
and with singularity
```
singularity pull docker://quay.io/climb-big-data/trimgalore:latest
```

## Tutorials for Docker and Singularity
Tutorials for Docker and Singularity can be found here:

https://github.com/Bioinfo-skills-2022-CLIMB-VM/The-value-and-use-of-containers<br/>
https://github.com/Bioinfo-skills-2022-CLIMB-VM/Assemble-a-microbial-genome-using-containers
