[![Docker Repository on Quay.io](https://quay.io/repository/junxy/docker-mailcatcher/status "Docker Repository on Quay.io")](https://quay.io/repository/junxy/docker-mailcatcher)

[![](https://badge.imagelayers.io/junxy/docker-mailcatcher:latest.svg)](https://imagelayers.io/?images=junxy/docker-mailcatcher:latest 'Get your own badge on imagelayers.io')

# docker-mailcatcher

Dockerized http://mailcatcher.me/ forked by https://github.com/schickling/dockerfiles/tree/master/mailcatcher

Extra small mailcatcher image 

## Usage

```sh
$ docker run -d -p 1080:1080 --name mailcatcher quay.io/junxy/docker-mailcatcher:latest
```

Link the container to another container and use the mailcatcher SMTP port `1025` via a ENV variable like `$MAILCATCHER_PORT_1025_TCP_ADDR`.
