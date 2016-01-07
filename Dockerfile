FROM        node:5
MAINTAINER  Manuel Leduc <manuel.leduc@gmail.com> (@manuelleduc)
RUN git clone https://github.com/kevoree/kevoree-browser-runtime.git
WORKDIR /kevoree-browser-runtime
RUN npm i
RUN npm install -g bower
RUN bower install --allow-root
RUN npm install -g grunt-cli
RUN grunt build

EXPOSE 9090
ENTRYPOINT  ["grunt", "serve"]
