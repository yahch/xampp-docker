# XAMPP docker

## Quick Start

```bash
docker-compose up
```

or

```bash
make build
# linux
docker run --name hello --restart=always -d -v $PWD/data:/data -p 8888:80 xampp:v8.2.4.0
# windows
docker run --name hello --restart=always -d -v %cd%/data:/data -p 8888:80 xampp:v8.2.4.0
```

## Build

### Make docker image.

```bash
make build
```

### Run image as container

```bash
make run
```

### Enter the running container bash

```bash
make enter
```

### Clean build

clean the built image.

```bash
make clean
```

### Save built docker image

```bash
make save
```

## Default config for xampp docker

mysql username root without password.

apache default port is 80,and mysql default port is 3306

**Files with a .conf/.ini suffix should be left as default unless you know what they do.**
