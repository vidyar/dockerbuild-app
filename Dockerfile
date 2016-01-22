FROM ubuntu:14.04 

COPY . /src

RUN  apt-get install -y curl
RUN  curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN  apt-get install -y nodejs
RUN  apt-get update && apt-get install openssh-client
RUN  cd /src; npm install

CMD ["node", "/src/index.js"]

EXPOSE  8080
#ADD buildoutput /
