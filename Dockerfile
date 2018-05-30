FROM alpine:latest
  LABEL maintainer="Jimmy Adaro <hello@jimmyadaro.com>"
  LABEL description="Test for quick deploys using GitLab CI/CD"
  LABEL version="1.0"
  RUN apk update && apk add bash && apk add openssh  && apk add lftp
  RUN echo OK HERE
  RUN mkdir -p ~/.ssh
