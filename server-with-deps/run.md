# Build and Run

## build

```sh
docker build -t server-with-deps .
```

## run

```sh
docker run -it -p 8080:8080 --name my-app --rm --init server-with-deps
```
