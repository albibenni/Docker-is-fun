```sh
# create the network
docker network create --driver=bridge app-net

# start the mongodb server
docker run -d --network=app-net -p 27017:27017 --name=db --rm mongo:7```

```sh
docker run -it --network=app-net --rm mongo:7 mongosh --host db
```
