FROM registry.gitlab.com/jitesoft/dockerfiles/node-yarn:${NODE_VERSION}-slim
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

RUN apk add --no-cache libstdc++ git g++ gcc wget make python openssl

CMD [ "yarn" ]
