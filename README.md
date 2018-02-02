# Node-Yarn

Docker image with alpine linux, node.js and yarn.  
Image is based on the  `jitesoft/node-base` repository.  

## Tags and Dockerfiles

* `9`, `9-1.4.1`, `latest` [Dockerfile](https://github.com/jitesoft/docker-node-yarn/blob/master/full/latest/Dockerfile)
* `8`, `8-1.4.1`, `stable` [Dockerfile](https://github.com/jitesoft/docker-node-yarn/blob/master/full/stable/Dockerfile)

### Slim versions

Slim versions does not include any of the additional dependencies (`git g++ gcc wget make python openssl`), this to make the images smaller.  
You might have to install all (or some) of those to be able to install any packages though.

* `9-slim, 9-1.4.1-slim`, `latest-slim` [Dockerfile](https://github.com/jitesoft/docker-node-yarn/blob/master/slim/latest/Dockerfile)
* `8-slim`, `8-1.4.1-slim`, `stable-slim` [(Dockerfile)](https://github.com/jitesoft/docker-node-yarn/blob/master/slim/stable/Dockerfile)