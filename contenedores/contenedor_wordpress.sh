#buscar imagenes disponibles
#docker search wordpress

#Solo wordpress
#docker run --name wp -p 80:80 wordpress

#Para levantar este contenedor tiene que estar funcionando el contendor de mysql
docker pull wordpress
docker run --name wp -p 80:80 --link mi_sql:mysql -d wordpress


