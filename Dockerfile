# Check out https://hub.docker.com/_/node to select a new base image
FROM node:14.14.0-alpine3.12

# Set to a non-root built-in user `node`

USER root

RUN npm i -g @loopback/cli

USER node

ENTRYPOINT [ "lb4" ]
