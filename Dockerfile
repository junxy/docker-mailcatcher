#FROM quay.io/sameersbn/ubuntu:14.04.20151023
#FROM gliderlabs/alpine:3.2
FROM alpine:3.2
MAINTAINER Junior Xu "ayijun@gmail.com"

#ADD install.sh install.sh
#RUN chmod +x install.sh && ./install.sh && rm install.sh

RUN apk add --update ruby ruby-bundler ruby-dev openssl-dev sqlite-dev \
    --virtual build-dependencies build-base && \
    rm /var/cache/apk/*

RUN gem install --no-document mailcatcher


# smtp port
EXPOSE 1025

# webserver port
EXPOSE 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]
