FROM node:16.14.0-alpine3.14

ARG WORKDIR
ARG CONTAINER_PORT
ARG API_URL

ENV HOME=/${WORKDIR} \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    HOST=0.0.0.0 \
    API_URL=${API_URL}

WORKDIR ${HOME}

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --cache-folder=/yarn_cache && \
    rm -rf /var/cache/apk/*

COPY . .
RUN yarn build && \
    rm -rf /var/cache/apk/*

EXPOSE ${CONTAINER_PORT}

CMD ["yarn", "start"]
