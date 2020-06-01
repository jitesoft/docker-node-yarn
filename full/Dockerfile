ARG NODE_VERSION="12"
FROM registry.gitlab.com/jitesoft/dockerfiles/node-yarn:${NODE_VERSION}-slim
RUN apk add --no-cache libstdc++ git g++ gcc wget make python3 openssl
CMD [ "yarn" ]
