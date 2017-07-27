FROM jitesoft/node-base:latest
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ENV YARN_VERSION="0.27.5" \
    YARN_GNUPG_KEY="6A010C5166006599AA17F08146C2130DFD2497F5"

RUN apk add --no-cache git \ 
    && apk add --no-cache --virtual trash wget gnupg tar \
    && wget https://github.com/yarnpkg/yarn/releases/download/v${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz \
    && wget -O keys.asc https://github.com/yarnpkg/yarn/releases/download/v${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz.asc \
    && gpg --keyserver pgp.mit.edu --recv-keys "${YARN_GNUPG_KEY}" || gpg --keyserver keyserver.pgp.com --recv-keys "${YARN_GNUPG_KEY}" || gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${YARN_GNUPG_KEY}"; \
    gpg --batch --verify keys.asc yarn-v${YARN_VERSION}.tar.gz \
    && mkdir /yarn && tar -xzvf yarn-v${YARN_VERSION}.tar.gz -C /yarn \
    && ln -s /yarn/dist/bin/yarn /usr/local/bin/yarn \
    && ln -s /yarn/dist/bin/yarn /usr/local/bin/yarnpkg \
    && rm -r yarn-v${YARN_VERSION}.tar.gz keys.asc \
    && apk del trash

CMD [ "yarn" ]
