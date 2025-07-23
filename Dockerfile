FROM alpine:latest

# Arguments
ARG APP_HOME=/home/node/app

# Install system dependencies
RUN \
	apk update && \
	apk upgrade && \
	apk add --no-cache --update nodejs npm gcompat tini git busybox-extras curl

# Create app directory
WORKDIR ${APP_HOME}

# Set NODE_ENV to production
ENV NODE_ENV=production

# Cloning Waidrin
RUN \
	git clone https://github.com/p-e-w/waidrin.git ${APP_HOME} && \
	cd ${APP_HOME}

RUN \
	echo "*** Install npm packages ***" && \
	npm i npm@latest && \
	npm cache clean --force && \
	npm run build
	
EXPOSE 3000

CMD npm run start -- --port 3000