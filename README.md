# pandirealidad-19

## Prerequisites

1. [Docker](https://www.docker.com/) - Docker is an open platform for developers and sysadmins to build, ship, and run distributed applications, whether on laptops, data center VMs, or the cloud.

### Docker
``` #!/bin/bash
- docker build -t docker/test .
- docker run -d --rm -t -i -p 8000:9000 docker/test
```