# Starting out

```sh
docker run -it --name docker-host --rm --privileged ubuntu:jammy
```

- `run`
  - run an instance of a container
    - `exec`
      - makes it execute with other containers
- `-it` `--interactive`
  - make it interactive, don't let it in the background
- `--name`
  - give a `name`, other than a random one assigned by default
- `-rm`
  - when stopped, throw everything away
- `--privileged`
  - usually you are not suppose to use it, it grant root permission on the ubuntu istance
- `--ubuntu:jammy`
  - is the distribution

### other example

```sh
docker run -dit ubuntu:jammy
```

- `-dit` (actually just `-d`)
  - (with run) run in detached mode, in background

```sh
docker attach container_id
docker exec container_id
```

- `attach`
  - get to running existing containers
- `exec`
  - open the `sh` of the running container
