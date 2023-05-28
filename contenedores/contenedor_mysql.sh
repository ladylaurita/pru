#buscar imagenes disponibles
#docker search mysql

#levantar contenedor MySQL

docker search mysql
docker pull mysql
docker run --name mi_sql -e mysql_root_password=usuario123 -d mysql
docker exec -it mi_sql bash


#conectarse a la base de datos
#mysql -h localhost -u root -p
