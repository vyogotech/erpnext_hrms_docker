# Introduction

This repo contains the compose and container files to generate OCI container images to build frappe HRMS application.

## Pre-requisite 

1. Podman Latest version \
2. Podman compose (required for running system locally)
2. Bash terminal 

# How to use

```
git clone https://github.com/vyogotech/erpnext_hrms_docker
./build_image.sh
```

## Customizations

### Image Tag

Update the .env file to change the target image tag and image version or pass the image co-ordinates as build-args

.env file example:

```
IMAGE_NAME=erpnext_hrms
IMAGE_TAG=latest
```

## Installing Podman on Ubuntu

Method 1 : Follow [official document] (https://podman.io/docs/installation#installing-on-linux) 


##  Alternative Method for installing Podman 4.4.5 
```
mkdir /tmp/podman_packages
cd /tmp/podman_packages

wget https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/unstable/xUbuntu_22.04/amd64/aardvark-dns_1.6.0-0ubuntu22.04+obs34.12_amd64.deb
wget https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/unstable/xUbuntu_22.04/amd64/netavark_1.3.0-0ubuntu22.04+obs22.9_amd64.deb
wget https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/unstable/xUbuntu_22.04/amd64/podman_4:4.5.0-0ubuntu22.04+obs74.14_amd64.deb
wget https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/unstable/xUbuntu_22.04/amd64/podman-gvproxy_4:4.5.0-0ubuntu22.04+obs74.14_amd64.deb
wget https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/unstable/xUbuntu_22.04/amd64/buildah_1.30.0-0ubuntu22.04+obs41.17_amd64.deb

for package in `ls *.deb`;
do
    sudo dpkg -i $package
done

```

### Check if podman installed correctly

```
podman version
```


## Installing podman-compose

```
pip3 install podman-compose
```

## Additional Installation

### Podman Desktop

 Podman desktop is open source equivalent of Docker docker and can be installed from the [offical website](https://podman.io)