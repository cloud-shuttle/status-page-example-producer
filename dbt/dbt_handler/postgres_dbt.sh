
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

read -p "Please input a OPENLINEAGE_COMPANY_ID:" OPENLINEAGE_COMPANY_ID_

while [ ! -n "$OPENLINEAGE_COMPANY_ID_" ]; 
    do
        read -p "Please input a OPENLINEAGE_COMPANY_ID:" OPENLINEAGE_COMPANY_ID_
    done

read -p "Please input a OPENLINEAGE_TOKEN:" OPENLINEAGE_TOKEN_

while [ ! -n "$OPENLINEAGE_TOKEN_" ]; 
    do
        read -p "Please input a OPENLINEAGE_TOKEN:" OPENLINEAGE_TOKEN_
    done

while [ ! -n "$OPENLINEAGE_URL_" ]; 
    do
        read -p "Please input a OPENLINEAGE_URL:" OPENLINEAGE_URL_
    done
export POSTGRES_USER=${POSTGRES_USER_}
export POSTGRES_PASSWORD=${POSTGRES_PASSWORD_}
export POSTGRES_DATABASE=${POSTGRES_DATABASE_}
echo "$POSTGRES_PASSWORD"
echo "$POSTGRES_DATABASE"
OPENLINEAGE_API_KEY_="$OPENLINEAGE_COMPANY_ID_|$OPENLINEAGE_TOKEN_"

echo your input dbt openlineage url="$OPENLINEAGE_URL_" openlineage APIKey="$OPENLINEAGE_API_KEY_"


export OPENLINEAGE_API_KEY=$OPENLINEAGE_API_KEY_
export OPENLINEAGE_URL=$OPENLINEAGE_URL_

# dbt run 

dbt-ol run
