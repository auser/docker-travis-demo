FROM node:onbuild

RUN mkdir -p /usr/src/app
RUN echo "Building container"

## run npm install
RUN pwd && ls -la
ADD ./package.json /usr/src/app/
RUN pwd && ls -la
WORKDIR /usr/src/app/
RUN npm install

CMD ["npm", "start"]
