FROM ubuntu:18.04

RUN mkdir /node
WORKDIR /node

RUN apt update && apt install wget curl -y
RUN wget https://raw.githubusercontent.com/algorand/go-algorand-doc/master/downloads/installers/update.sh
RUN chmod 544 update.sh
RUN ./update.sh -i -c stable -p /node -d /node/data -n

COPY ./init.sh .
COPY ./config.json /node/data
RUN chmod +x ./init.sh
ENTRYPOINT ["/node/init.sh"]
