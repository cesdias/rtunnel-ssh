# rtunnel-ssh

This creates a reverse tunnel as a socks5 proxy.

# build

```
foo@bar# docker build -t rtunnel-ssh:1.0 .
```

# usage
```
foo@bar# docker run --restart=always -d -v $PWD/.ssh:/root/.ssh -e REMOTE_PORT=9000 -e SSH_USER=rtunnel -e SSH_HOST=foo.bar -e SSH_PORT=2222 rtunnel-ssh:1.0
```

REMOTE_PORT: port opened on the remote host that should be used in the configuration of the socks5 proxy

SSH_USER: regular user on remote host

SSH_HOST: remote host accessible from the Internet

SSH_PORT: ssh port on remote host
