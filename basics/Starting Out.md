# Starting out

`docker run -it --name docker-host --rm --privileged ubuntu:jammy`

- `run`
  - run an istance of a container
- `-it`
  - make it interactive, don't let it in the background
- `--name`
  - give a `name`, other than a random one assigned by default
- `-rm`
  - when stopped, throw everything away
- `--privileged`
  - usually you are not suppose to use it, it grant root permission on the ubuntu istance
- `--ubuntu:jammy`
  - is the distribution
