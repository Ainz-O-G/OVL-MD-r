FROM node:lts-alpine

RUN apk add --no-cache git && \
    git clone https://github.com/nignanfatao1/OVL-Md /ovl_bot

WORKDIR /ovl_bot

COPY package.json .

RUN npm i

COPY . .

EXPOSE 8000

CMD ["sh", "-c", "npm run Ovl 2>&1 | tee /logs/npm.log"]
