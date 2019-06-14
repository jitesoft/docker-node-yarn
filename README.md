# Node-Yarn

Docker image with alpine linux, node.js and yarn.  
Image is based on the  `jitesoft/node-base` repository.  

### Full builds

* `12`, `latest`
* `10`, `stable`, `dubnium`

### Slim builds

Due to adding a few core packages to the main branches of the image, two `slim` images have been introduced.  
The slim images does not have `git g++ gcc wget make python openssl` packages installed hence decreasing the image size.

* `12-slim`, `latest-slim`
* `10-slim`, `stable-slim`, `dubnium-slim`, `lts-slim`

#### Old unmaintained images

* `11`
* `11-slim`
* `9`
* `9-slim`
* `8`, `carbon`
* `8-slim`, `carbon-slim`

## Docker files

Docker files can be found at  [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-yarn) or [GitHub](https://github.com/jitesoft/docker-node-yarn)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).
