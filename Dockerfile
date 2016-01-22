FROM node:onbuild

RUN mkdir -p /usr/src/app
RUN echo "Building container"

## run npm install
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install

CMD ["npm", "start"]
