# Lightweight CI/CD Docker image

![Docker Build Status](https://img.shields.io/docker/build/jimmyadaro/gitlab-ci-cd.svg) ![Docker Build Status](https://img.shields.io/docker/automated/jimmyadaro/gitlab-ci-cd.svg)

#### Created for simple CI/CD Pipelines* such as Bitbucket's or GitLab's.

Available at Docker Hub: [https://hub.docker.com/r/jimmyadaro/gitlab-ci-cd](https://hub.docker.com/r/jimmyadaro/gitlab-ci-cd)

It uses `bash`, `SSH` and `LFTP` to connect a remote server and _mirror_ (upload) the Git repository using the Git CI/CD repo vendor. 

The `tzdata` package is to set the TimeZone when using `date` like so: `CURRENT_DATE=$(TZ="America/Argentina/Buenos_Aires" date +%F_%H-%M-%S);` 

## Includes:

### Alpine Linux

> "Alpine Linux is a security-oriented, lightweight Linux distribution based on musl libc and busybox."
>
>https://alpinelinux.org/


### Bash 

> "The GNU Bourne-Again Shell"
>
>http://savannah.gnu.org/projects/bash/

### OpenSSH

> "OpenSSH is the premier connectivity tool for remote login with the SSH protocol."
>
>https://www.openssh.com/

### LFTP

> "LFTP is a sophisticated file transfer program supporting a number of network protocols (ftp, http, sftp, fish, torrent)."
>
>https://lftp.yar.ru/

### tzdata

> "The Time Zone Database (often called tz or zoneinfo) contains code and data that represent the history of local time for many representative locations around the globe" 
>
> https://www.iana.org/time-zones

## Notes:

- It'll automatically update Linux and install the non-cached packages.
- Packages installation will run quietly (`apk add --no-cache <package> -q`).
- It'll automatically use `bash` instead of Alpine's default shell (`sh`).

---

 _* Pipeline configuration not included. "Use at your own risk." Tutorial for GitLab CI/CD [here](https://medium.com/@jimmyadaro/build-a-ci-cd-pipeline-with-docker-and-gitlab-f351585a5c83). Tutorial for Bitbucket coming soon._
