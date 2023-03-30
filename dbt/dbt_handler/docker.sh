
read -p "Please input a dbt user name:" POSTGRES_USER_

while [ ! -n "$POSTGRES_USER_" ]; 
    do
        read -p "Please input a dbt user name:" POSTGRES_USER_
    done

read -p "Please input a dbt password:" POSTGRES_PASSWORD_

while [ ! -n "$POSTGRES_PASSWORD_" ]; 
    do
        read -p "Please input a dbt password:" POSTGRES_PASSWORD_
    done

read -p "Please input a DBT_SNOWFLAKE_DATABASE:" POSTGRES_DATABASE_

while [ ! -n "$POSTGRES_DATABASE_" ]; 
    do
        read -p "Please input a DBT_SNOWFLAKE_DATABASE:" POSTGRES_DATABASE_
    done

docker pull postgres
mkdir ${HOME}/postgres-data/
docker run -d --name dev-postgres -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD_ -v ${HOME}/postgres-data/:/var/lib/postgresql/data -p 5432:5432 $POSTGRES_DATABASE_
docker exec -it dev-postgres bash
psql -h localhost -U postgres


export POSTGRES_USER=$POSTGRES_USER_
export POSTGRES_PASSWORD=$POSTGRES_PASSWORD_
export POSTGRES_DATABASE=$POSTGRES_DATABASE_