# syntax=docker/dockerfile:experimental
ARG NODE_IMAGE="node-base/full:23"
FROM registry.gitlab.com/jitesoft/dockerfiles/${NODE_IMAGE}
ARG YARN_VERSION
ARG BUILD_TIME
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/node-yarn" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/node-yarn/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/node-yarn" \
      com.jitesoft.app.yarn.version="${YARN_VERSION}" \
      org.opencontainers.image.version="${YARN_VERSION}" \
      org.opencontainers.image.created="${BUILD_TIME}" \
      org.opencontainers.image.description="Nodejs and Yarn on alpine linux." \
      org.opencontainers.image.vendor="Jitesoft" \
      org.opencontainers.image.source="https://gitlab.com/jitesoft/dockerfiles/node-yarn"

ENV PATH="$PATH:/yarn/bin"
RUN --mount=type=bind,source=./binaries,target=/tmp \
    mkdir /yarn \
 && tar -xzf /tmp/latest.tar.gz -C /yarn --strip-components=1

CMD [ "yarn" ]
