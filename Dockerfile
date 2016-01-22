FROM node:onbuild

RUN mkdir -p /usr/src/app
RUN echo "Building container"

## run npm install
ADD package.json /usr/src/app
RUN npm install

WORKDIR /usr/src/app
CMD ["npm", "start"]
