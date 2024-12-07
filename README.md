https://hub.docker.com/repository/docker/teunwrmzijnallenamenalingebrui/virtualtabletop/general <br>
docker pull teunwrmzijnallenamenalingebrui/virtualtabletop:latest

In order to launch it using docker compose create a file called docker-compose.yml and paste the following in.

```version: "3.3"
services:
  virtualtabletop:
    user: root
    container_name: virtualtabletop
    volumes:
      - ./saves:/virtualtabletop-main/save
      - ./library:/virtualtabletop-main/library
      - ./config.json:/virtualtabletop-main/config.json
    ports:
      - 8272:8272
    environment:
      - NODE_ENV=production
    image: teunwrmzijnallenamenalingebrui/virtualtabletop:latest```
