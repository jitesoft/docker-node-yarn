ARG NODE_VERSION="12"
FROM registry.gitlab.com/jitesoft/dockerfiles/node-base:${NODE_VERSION}
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/node-yarn" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/node-yarn/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/node-yarn"

ENV PATH="$PATH:/yarn/bin"

COPY ./latest.tar.gz /

RUN mkdir /yarn \
 && tar -xzvf /latest.tar.gz -C /yarn --strip-components=1 \
 && rm -r /latest.tar.gz

CMD [ "yarn" ]
