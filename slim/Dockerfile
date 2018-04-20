ARG BUILD_TYPE=""
FROM jitesoft/node-base:${BUILD_TYPE}-slim
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

ENV PATH="$PATH:/yarn/bin"

RUN apk add --no-cache --virtual .trash gnupg git openssl \
    && wget -qO- https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --import \
    && wget https://yarnpkg.com/latest.tar.gz \
    && YARNV=$(find / "yarn-v*.tar.gz" | sed -n "s/^.*V\(\S*\).TAR.GZ\.*$/\1/p") \
    && wget -O keys.asc https://github.com/yarnpkg/yarn/releases/download/v${YARNV}/yarn-v${YARNV}.tar.gz.asc \
    && gpg --verify keys.asc yarn-v${YARNV}.tar.gz \
    && mkdir /yarn \
    && tar -xzvf yarn-v${YARNV}.tar.gz -C /yarn --strip-components=1 \
    && rm -r yarn-v${YARNV}.tar.gz keys.asc \
    && apk del .trash

CMD [ "yarn" ]