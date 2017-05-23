FROM node:latest

ENV NODE_ENV="production"

RUN mkdir -p /src
WORKDIR /src

RUN git clone https://github.com/prerender/prerender.git && \
	cd prerender && \
	npm install

EXPOSE 3000

WORKDIR /src/prerender

CMD node server.js
