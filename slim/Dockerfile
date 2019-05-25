ARG NODE_VERSION="12"
FROM registry.gitlab.com/jitesoft/dockerfiles/node-base:${NODE_VERSION}-slim
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.repo="https://gitlab.com/jitesoft/dockerfiles/node-yarn" \
      maintainer.issues="https://gitlab.com/jitesoft/dockerfiles/node-yarn/issues"

ENV PATH="$PATH:/yarn/bin"

COPY ./latest.tar.gz /

RUN mkdir /yarn \
 && tar -xzvf /latest.tar.gz -C /yarn --strip-components=1 \
 && rm -r /latest.tar.gz

CMD [ "yarn" ]
