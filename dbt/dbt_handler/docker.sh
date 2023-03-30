docker pull postgres
mkdir ${HOME}/postgres-data/
docker run -d --name dev-postgres -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} -v ${HOME}/postgres-data/:/var/lib/postgresql/data -p 5432:5432 ${POSTGRES_DATABASE}
docker exec -it dev-postgres bash
psql -h localhost -U postgres