# Node-Yarn

Docker image with alpine linux, node.js and yarn.  
Image is based on the  `jitesoft/node-base` repository.  

## Tags and Dockerfiles

* `node-9-1.3.2`, `latest` [(Dockerfile)](https://github.com/jitesoft/docker-node-yarn/blob/node-9/master/Dockerfile)
* `node-8-1.3.2`, [(Dockerfile)](https://github.com/jitesoft/docker-node-yarn/blob/master/node-8/Dockerfile)

### Slim versions

Slim versions does not include any of the additional dependencies (`git g++ gcc wget make python openssl`), this to make the images smaller.  
You might have to install all (or some) of those to be able to install any packages though.

* `node-9-1.3.2-slim` [(Dockerfile)](https://github.com/jitesoft/docker-node-yarn/blob/master/slim/node-9/Dockerfile)
* `node-8-1.3.2-slim` [(Dockerfile)](https://github.com/jitesoft/docker-node-yarn/blob/master/slim/node-8/Dockerfile)