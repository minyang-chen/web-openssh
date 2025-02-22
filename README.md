# Web OpenSSH (License: MIT)

- Intro: Linux Secure Shell & WebSFTP over HTTPS, sharing connection message over websocket protocol, able to replace OpenSSH Server completely.
- Support: HTTPS, Basic AUTH, Docker Integration, WebSocket FileUpload, FileDownload, etc.

![image](https://github.com/ghostplant/web-openssh/raw/images/webshell.png "Web Shell")

--------------------------------------------------------

*Features of webssh-proxy*:

- UTF-8 Support, Color Terminal, Visual Bell/Beep Sound, ..
- Local File Uploading to Remote: support Large file upload (<= 2GB)
- Remote File Downloading to Local: support HUGE file download
- No dependency with OpenSSH Server
- Fully AsyncIO based

*Supported All mainstream browsers*:

-	Firefox/Iceweasel latest (all supported)
-	Chrome/Chromium latest (all supported)
-	IE 11 (only beep sound is not supported)

--------------------------------------------------------

### Run Embedded Web Shell in Docker from Repository

```sh
# Download docker image
docker pull ghostplant/webshell
# Run service over HTTPS, no password:
docker run -it --rm --net=host -e LISTEN="8443 ssl" ghostplant/webshell
# Run service over HTTPS, with password:
docker run -it --rm --net=host -e LISTEN="8443 ssl" -e ACCOUNT="admin:badmin" ghostplant/webshell
```

### To Persistly Run Web Shell Docker Service

```sh
docker run -it -d --name my_web_ssh -v ${HOME}/alpine_home:/root --restart always --net=host -e LISTEN="8443 ssl" -e ACCOUNT="admin:badmin" ghostplant/webshell
```

--------------------------------------------------------

### Compile Source Code on Ubuntu native
```
add src entry to a/etc/apt/source.list
deb-src http://ca.archive.ubuntu.com/ubuntu/ jammy main restricted

```sh
sudo apt build-dep nginx-core
```
git clone https://github.com/ghostplant/web-openssh
cd web-openssh/
./wsh-make_native
./wsh-run
```

### Compile Source Code on CentOS-7 native

```sh
sudo yum install epel-release
sudo yum install gcc nginx pcre-devel openssl openssl-devel

git clone https://github.com/ghostplant/web-openssh
cd web-openssh/
./wsh-make_native
./wsh-run
```

### Compile Source Code as alpine-embedded Docker Image

```sh
sudo apt build-dep nginx-core  # for Ubuntu only

sudo yum install epel-release # for Centos only
sudo yum install gcc nginx pcre-devel openssl openssl-devel

git clone https://github.com/ghostplant/web-openssh
cd web-openssh/
./wsh-make_alpine
docker run -it --rm --net=host -e LISTEN="8443 ssl" ghostplant/webshell
```

--------------------------------------------------------

### Next, open your browser to get access to the terminal

```sh
x-www-browser "https://localhost:8443/"
```
--------------------------------------------------------
### deploy webssh as background service [Ubuntu]

```sh
bash webssh_service_deploy.sh
```

