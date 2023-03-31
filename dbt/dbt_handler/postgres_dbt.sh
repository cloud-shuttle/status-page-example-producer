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

read -p "Please input a OPENLINEAGE_API_KEY:" OPENLINEAGE_API_KEY_

while [ ! -n "$OPENLINEAGE_API_KEY_" ]; 
    do
        read -p "Please input a OPENLINEAGE_API_KEY:" OPENLINEAGE_API_KEY_
    done

read -p "Please input a OPENLINEAGE_URL:" OPENLINEAGE_URL_

while [ ! -n "$OPENLINEAGE_URL_" ]; 
    do
        read -p "Please input a OPENLINEAGE_URL:" OPENLINEAGE_URL_
    done


read -p "Please input a OPENLINEAGE_NAMESPACE:" OPENLINEAGE_NAMESPACE_

while [ ! -n "$OPENLINEAGE_NAMESPACE_" ]; 
    do
        read -p "Please input a OPENLINEAGE_NAMESPACE:" OPENLINEAGE_NAMESPACE_
    done
export POSTGRES_USER=${POSTGRES_USER_}
export POSTGRES_PASSWORD=${POSTGRES_PASSWORD_}
export POSTGRES_DATABASE=${POSTGRES_DATABASE_}

echo your input dbt openlineage url="$OPENLINEAGE_URL_" openlineage APIKey="$OPENLINEAGE_API_KEY_"


export OPENLINEAGE_API_KEY=$OPENLINEAGE_API_KEY_
export OPENLINEAGE_URL=$OPENLINEAGE_URL_
export OPENLINEAGE_NAMESPACE=$OPENLINEAGE_NAMESPACE_

# dbt run 

dbt-ol run