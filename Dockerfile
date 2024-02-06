# build environment
FROM node:18.19.0-alpine3.18

RUN apk update
RUN apk add --no-cache git

RUN mkdir /code
WORKDIR /code

ENV PATH /code/node_modules/.bin:$PATH

COPY . ./

RUN npm i --silent

CMD ["npm", "run", "dev"]
