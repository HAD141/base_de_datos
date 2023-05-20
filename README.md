
# Bases de datos

Crean una base de datos mysql junto a un phpmyadmin y un mongodb junto a un mongo-express.

Dentro del archico `.env` podemos cambiar el nombre de usuario, password o puertes de las bases de datos o de los administradores.

```environment
USERNAME=admin
PASSWORD=adminadmin
DATABASE=had

PORT_MONGO_EXPRESS=8081
PORT_MONGO=27017
PORT_MYSQL=3306
PORT_MYSQL_ADMIN=8080
```

## Ejecución

```bash
$ docker-compose up
```

Una vez que la pantalla no muestra mas logs, presionar `ctrl+c` para matar al proceso.
La primera vez puede ser que falle el mongo-express porque mongo tarda en levantar, es una cuestión de docker, las siguientes ejecuciones debería levantar todo de forma normal.


## Creando imágenes

Para crear las imágenes se debe ejecutar el comando

```bash
$ bash build
```

### Cargando base de datos en mysql

Para mongodb debo lanzar el contenedor

Para mysql debo lanzar el contenedor

```bash
$ docker run --name ugr_had_141_mysql_container ugr_had_141_mysql
```

Abrir otra terminal y ejecutar

```bash
$ docker exec -it ugr_had_141_mysql_container bash
# dentro del contenedor ejecutar
$ mysql -uroot -padminadmin had < /opt/tutorial.sql
# conectarse a mysql
$ mysql -uroot -padminadmin tutorial
```

### Cargando base de datos en mongodb

En caso de que la base no este cargada por el entrypoint.

Para mongodb debo lanzar el contenedor

```bash
$ docker run --name ugr_had_141_mongodb_container ugr_had_141_mmongodb
```

Abrir otra terminal y ejecutar

```bash
$ docker exec -it ugr_had_141_mongodb_container bash
# dentro del contenedor ejecutar
$ mongorestore --username=admin --password=adminadmin --authenticationDatabase=admin --db=tutorial /opt/tutorial
# conectarse a mongodb
$ mongosh --username=admin --password=adminadmin --authenticationDatabase=admin tutorial
```


## Push

```bash
docker push lcdhad141/ugr_had_141_mongodb:latest
docker push lcdhad141/ugr_had_141_mongoexpress:latest
docker push lcdhad141/ugr_had_141_mysql:latest
docker push lcdhad141/ugr_had_141_phpmyadmin:latest
```
