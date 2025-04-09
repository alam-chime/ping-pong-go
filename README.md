# ping-pong-go


### 1. Build the app
```
$ docker build -t ping-pong-go:single-stage .
```

### 2. Run/test the app
```
$ docker run --name single-stage --rm -p 3000:3000 ping-pong-go:single-stage
$ curl http://localhost:3000/ping
$ docker stop single-stage
```

### 3. Measure the size on disk for the container
```
$ docker image ping-pong-go
```

### 4. List all the dependencies in the container
```
$ docker sbom ping-pong-go:single-stage
```

### 5. Scan a container image using wiz (request access [here](https://go/request-access/Wiz+Read+Only) if you do not have it)
```
wizcli auth --use-device-code
wizcli docker scan --image ping-pong-go:single-stage
```

### 6. Change to a multi-stage build

Make changes to the Dockerfile to use a multi-stage build

### 7. Build the image with a new tag + compare differences

```
$ docker build -t ping-pong-go:multi-stage .
```