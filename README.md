# .devcontainer

## Getting Started

### Add SSH Keys
Generate new public & private key pair. Copy public key from $HOME/.ssh/id_rsa.pub and paste into new SSH key in Github Account Settings.
```bash
ssh-keygen -t rsa -b 4096
```

### Clone Repo
```bash
git clone git@github.com:Nrockwood/.devcontainer.git
```

### Docker Install
Download package and follow install setup for your target OS from https://docs.docker.com/desktop/

Verify successful docker install by opening a new terminal to see if 'docker' is available
```bash
docker --version
```
Should return something like
```bash
Docker version 24.0.6, build ed223bc
```

## Build Image
Build an updated image with
```bash
make build
```

## Dev
To see a list of commonly used tasks you may use during development of this project run
```bash
make
```