FROM node:18-alpine
RUN apk add curl unzip \
    && curl -LO https://github.com/ArnoldSmith86/virtualtabletop/archive/refs/heads/main.zip \
    && unzip main.zip \
    && rm main.zip \
    && apk del curl unzip \
    && cd virtualtabletop-main \
    && npm install --prod
EXPOSE 8272
VOLUME /virtualtabletop-main/save
WORKDIR /virtualtabletop-main
CMD ["npm", "start"]
