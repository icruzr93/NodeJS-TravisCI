# NodeJS-TravisCI
Basic Implementation of CI/CD with TravisCI and Ducker Hub Delivery

## Prerequisites

1. [Docker](https://www.docker.com/) - Docker is an open platform for developers and sysadmins to build, ship, and run distributed applications, whether on laptops, data center VMs, or the cloud.

### Docker
``` #!/bin/bash
- docker build -t docker/test .
- docker run -d --rm -t -i -p 8000:9000 docker/test
```
