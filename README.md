# ping-pong-go


Build the app
```
$ docker build -t ping-pong-go:some-tag .
```

Run the app
```
$ docker run --rm -p 3000:3000 ping-pong-go:some-tag
```

Measure the size on disk for the container
```
$ docker image ls ping-pong-go:some-tag
```

List all the dependencies in the container
```
$ docker sbom ping-pong-go:some-tag
```

Scan a container image using wiz
```
wizcli docker scan --image ping-pong-go:some-tag
```