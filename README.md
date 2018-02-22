# vgo-docker-example

A straightforward example of how to:

* Build Go applications using [vgo](https://github.com/golang/vgo)
* Write a Dockerfile that uses vgo as part of it's build process.
* Copy the build artifact to a minimal Docker image the leverages the [google/distroless](https://github.com/GoogleCloudPlatform/distroless) image.

The end result? Reproducible builds *and* small images.

## Installing

Get the package:
```sh
go get github.com/elithrar/vgo-docker-example
```

Build it:
```sh
docker build -t vgo-docker-example:latest .
```

Run it:
```
docker run vgo-docker-example:latest
```

The `vgo-docker-example` runs a simple web server using [gorilla/mux](https://github.com/gorilla/mux/).

## License

BSD licensed. See the LICENSE file for details.
