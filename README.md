# NodeJS-TravisCI
Basic Implementation of CI/CD with TravisCI and Ducker Hub Delivery

## Prerequisites

1. [Docker](https://www.docker.com/) - Docker is an open platform for developers and sysadmins to build, ship, and run distributed applications, whether on laptops, data center VMs, or the cloud.

### Docker

Build
``` #!/bin/bash
docker build -f Dockerfile -t dev-image:trunk .
docker build -f Dockerfile-test -t test-image:latest .
```

Run Dev Image
``` #!/bin/bash
docker run --name dev-image --network="bridge" -d -p 9000:9000 dev-image:trunk
```

Run Test Image

``` #!/bin/bash
docker run --name test-image -v $PWD:/JUnit --network="bridge" --link=dev-image -it -p 9001:9000 test-image:latest npm run mocha
```
