# Extract (in Docker)

Feedbin's [extract](https://github.com/feedbin/extract) takes the
[Mercury parser](https://github.com/postlight/parser) and wraps it in a
Node app.

This takes Feedbin's `extract` and wraps it in a container for
portability.

## Installation

```
docker pull leftbrained/extract:latest
```

## Usage

Run the container and expose 8080, or expose whatever `PORT` you specify.
`EXTRACT_SECRET` and `EXTRACT_USER` will be generated if not supplied.

```
$ docker run -p 8080:8080 leftbrained/extract:latest
-------------------------------------------
Secret: abYBIrFnFDNrmtQMU7Q11tXJ
user: F8nkW4E67TPUHCVDiyD01P3P
-------------------------------------------
Extract started on port 8080
```

Refer to [Feedbin's README](https://github.com/feedbin/extract#usage)
for an example of how to call the service.

