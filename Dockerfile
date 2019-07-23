FROM cypress/browsers:node12.6.0-chrome75

RUN yarn global add \
    cypress@3 \
    && yarn cache clean

ENV NODE_PATH="/usr/local/share/.config/yarn/global/node_modules:${NODE_PATH}"

WORKDIR /app
