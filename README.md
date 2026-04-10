# Node-Yarn

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/node-yarn.svg)](https://cloud.docker.com/u/jitesoft/repository/docker/jitesoft/node-yarn)

Docker image with alpine linux, node.js and yarn (v1).  
Image is based on the  `jitesoft/node-base` repository.  

Images are automatically built for AMD64 and ARM64 on schedule and on triggers (node version changes) in GitLab CI.  
Active tags are the `latest`, `lts` and major versions of the supported nodejs versions seen [here](https://nodejs.org/en/about/previous-releases).

## Yarn major version

This image contains yarn 1.x, that is, the classic Yarn package manager.  

Later versions of yarn is recommended to install on a project basis and prefferably by using corepack.  
Due to this, the recommendation - if you wish to use yarn berry (v2+) - is to not use this image.  

Extending the node base image to use corepack can be easily done in the following manner:

```dockerfile
# Node 24 and earlier
FROM jitesoft/node-base:24
RUN corepack enable
```

```dockerfile
# Node 25 and later
FROM jitesoft/node-base:25
RUN npm i -g corepack \
    && corepack enable
```

# Image/Tags

Tags are based on the Node.js version and uses the latest yarn version - from the v1 branch - available at build time.  
The `latest` tag references the latest build of the latest node version.  
The `lts` tag references the latest build of the latest node lts version.  
Tags named with their version name (`gallium`, `hydrogen` etc) is the latest build of the specific node version.  
Tags named with their major version uses latest minor/patch at build-time.

Images can be found at the following registries:

* [DockerHub](https://hub.docker.com/r/jitesoft/node-yarn) `docker.io/jitesoft/node-yarn`
* [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-yarn) `registry.gitlab.com/jitesoft/dockerfiles/node-yarn`
* [GitHub](https://github.com/orgs/jitesoft/packages/container/package/node-yarn) `ghcr.io/jitesoft/node-yarn`

## Slim/Full

The non-suffixed images are based on the `jitesoft/node-base` image while the `slim` suffixed image is based on the `jitesoft/node` image.  
The difference between those images are that the "full" version contains a set of extra packages used in building (`gcc`, `g++`, `curl`, `wget`, `openssl`, `python` and `make`).

## Docker files

Docker files can be found at  [GitLab](https://gitlab.com/jitesoft/dockerfiles/node-yarn) or [GitHub](https://github.com/jitesoft/docker-node-yarn)

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

Files in this repository are released under the MIT license.  
Read the Node.js license [here](https://github.com/nodejs/node/blob/master/LICENSE).  
Yarn is released under the [BSD 2-Clause](https://github.com/yarnpkg/yarn/blob/master/LICENSE) license.

### Sponsors

Jitesoft images are built via GitLab CI on runners hosted by the following wonderful organizations:

<a href="https://osuosl.org/" target="_blank" title="Oregon State University - Open Source Lab">
    <img src="https://jitesoft.com/images/oslx128.webp" alt="Oregon State University - Open Source Lab">
</a>

_The companies above are not affiliated with Jitesoft or any Jitesoft Projects directly._

---

Sponsoring is vital for the further development and maintaining of open source.  
Questions and sponsoring queries can be made by <a href="mailto:sponsor@jitesoft.com">email</a>.  
If you wish to sponsor our projects, reach out to the email above or visit any of the following sites:

[Open Collective](https://opencollective.com/jitesoft-open-source)  
[GitHub Sponsors](https://github.com/sponsors/jitesoft)  
[Patreon](https://www.patreon.com/jitesoft)

