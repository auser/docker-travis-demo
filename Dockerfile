FROM node:onbuild

RUN echo "Building container"

## run npm install
ADD ./package.json /usr/src/app/
WORKDIR /usr/src/app/
RUN npm install

CMD ["npm", "start"]
