
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
