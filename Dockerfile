FROM node:18.0.0
# Installing libvips-dev for sharp Compatibility
RUN apt-get update
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
WORKDIR /
COPY ./package.json ./yarn.lock ./
ENV PATH /opt/node_modules/.bin:$PATH
RUN yarn config set network-timeout 600000 -g && yarn install
WORKDIR /app
COPY ./ .
RUN yarn build
EXPOSE 1337
CMD ["yarn", "develop"]
