FROM cypress/browsers:node12.8.1-chrome80-ff72

RUN yarn global add \
    cypress@4 \
    && yarn cache clean

ENV NODE_PATH="/usr/local/share/.config/yarn/global/node_modules:${NODE_PATH}"

WORKDIR /app
