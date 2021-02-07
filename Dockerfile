FROM node:latest
RUN git clone https://github.com/kevin91270/front-vue-eval
WORKDIR ./front-vue-eval
RUN npm install
CMD npm run serve
EXPOSE 8080