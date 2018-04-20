ARG BUILD_TYPE=""
FROM jitesoft/node-yarn:${BUILD_TYPE}-slim
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>"

RUN apk add --no-cache libstdc++ git g++ gcc wget make python openssl

CMD [ "yarn" ]