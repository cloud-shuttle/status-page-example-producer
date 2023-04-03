
read -p "Please input a postgres username:" POSTGRES_USER_

while [ ! -n "$POSTGRES_USER_" ]; 
    do
        read -p "Please input a postgres username:" POSTGRES_USER_
    done

read -p "Please input a postgres password:" POSTGRES_PASSWORD_

while [ ! -n "$POSTGRES_PASSWORD_" ]; 
    do
        read -p "Please input a postgres password:" POSTGRES_PASSWORD_
    done

read -p "Please input a postgres database name:" POSTGRES_DATABASE_

while [ ! -n "$POSTGRES_DATABASE_" ]; 
    do
        read -p "Please input a postgres database name:" POSTGRES_DATABASE_
    done

export POSTGRES_USER=${POSTGRES_USER_}
export POSTGRES_PASSWORD=${POSTGRES_PASSWORD_}
export POSTGRES_DATABASE=${POSTGRES_DATABASE_}

OPENLINEAGE_API_KEY_="$OPENLINEAGE_API_KEY"

echo your input dbt openlineage url="$OPEN_LINEAGE_ENDPOINT" openlineage APIKey="$OPENLINEAGE_API_KEY_"


export OPENLINEAGE_API_KEY=$OPENLINEAGE_API_KEY_
export OPENLINEAGE_URL=$OPEN_LINEAGE_ENDPOINT
export OPENLINEAGE_NAMESPACE=$OPEN_LINEAGE_NAMESPACE

# dbt run 

dbt-ol run
