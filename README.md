# Node-Yarn

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/node-yarn.svg)](https://cloud.docker.com/u/jitesoft/repository/docker/jitesoft/node-yarn)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

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

## Licenses

Files in this repository are released under the MIT license.  
Read the nodejs license [here](https://github.com/nodejs/node/blob/master/LICENSE).  
Yarn is released under the [BSD 2-Clause](https://github.com/yarnpkg/yarn/blob/master/LICENSE) license.
