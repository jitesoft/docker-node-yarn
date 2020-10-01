# syntax=docker/dockerfile:experimental
ARG NODE_MAJOR="12"
ARG NODE_IMAGE="node-base/full"
FROM registry.gitlab.com/jitesoft/dockerfiles/${NODE_IMAGE}:${NODE_MAJOR}
ARG YARN_VERSION
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/node-yarn" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/node-yarn/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/node-yarn" \
      com.jitesoft.app.yarn.version="${YARN_VERSION}"

ENV PATH="$PATH:/yarn/bin"
RUN --mount=type=bind,source=./binaries,target=/tmp \
    tar -xzf /tmp/latest.tar.gz -C /yarn --strip-components=1

CMD [ "yarn" ]
