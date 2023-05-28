Este contenedor contiene las últimas versiones de apache, mysql y phpmyadmin y la versión 7.2 de php.
Se reinicia siempre al reiniciar el sistema.
En este caso le hemos indicado que nos permita acceder sin contraseña a mysql y le he puesto la zona horaria de Madrid
En el puerto 81 esta phpmyadmin, en el puerto 80 tenemos apache/php y el 3306  mysql.



# parar los contenedores
docker compose stop

# borrarcontenedores y volúmenes
docker compose down -v


