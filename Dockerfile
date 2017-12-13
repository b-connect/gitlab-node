FROM mhart/alpine-node

RUN apk add --update python make g++ git
ADD runner.sh /runner.sh
RUN chmod +x /runner.sh
