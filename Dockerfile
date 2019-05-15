FROM alpine:latest
RUN apk update -q && apk add --no-cache bash -q && apk add --no-cache openssh -q && apk add --no-cache lftp -q && apk add --no-cache util-linux -q
CMD ["/bin/bash"]
