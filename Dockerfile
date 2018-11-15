FROM cypress/browsers:chrome69

RUN yarn global add \
    cypress@3 \
    && yarn cache clean

ENV NODE_PATH="/usr/local/share/.config/yarn/global/node_modules:${NODE_PATH}"

WORKDIR /app
