# platon-docker
Dockerfile for platon


# Building

```bash
docker build -t platon .
```

# Running

```bash
# block dir
mkdir data
docker run --rm -itd --name atp -p 6789:6789 -v `pwd`/data:/root/.platon platon
```


# Using pre-built docker image

Using automated build image from <https://hub.docker.com/r/mixhq/platon/>:

```bash
docker run --rm -itd --name atp -p 6789:6789 -v `pwd`/data:/root/.platon platon
```
