read -p "Please input a dbt account:" DBT_ACCOUNT_

while [ ! -n "$DBT_ACCOUNT_" ]; 
    do
        read -p "Please input a dbt account:" DBT_ACCOUNT_
    done

read -p "Please input a dbt user name:" DBT_USER_

while [ ! -n "$DBT_USER_" ]; 
    do
        read -p "Please input a dbt user name:" DBT_USER_
    done

read -p "Please input a dbt password:" DBT_PASSWORD_

while [ ! -n "$DBT_PASSWORD_" ]; 
    do
        read -p "Please input a dbt password:" DBT_PASSWORD_
    done

read -p "Please input a DBT_SNOWFLAKE_DATABASE:" DBT_SNOWFLAKE_DATABASE_

while [ ! -n "$DBT_SNOWFLAKE_DATABASE_" ]; 
    do
        read -p "Please input a DBT_SNOWFLAKE_DATABASE:" DBT_SNOWFLAKE_DATABASE_
    done

read -p "Please input a DBT_SNOWFLAKE_WAREHOUSE:" DBT_SNOWFLAKE_WAREHOUSE_

while [ ! -n "$DBT_SNOWFLAKE_WAREHOUSE_" ]; 
    do
        read -p "Please input a DBT_SNOWFLAKE_WAREHOUSE:" DBT_SNOWFLAKE_WAREHOUSE_
    done

read -p "Please input a DBT_SNOWFLAKE_SCHEMA:" DBT_SNOWFLAKE_SCHEMA_

while [ ! -n "$DBT_SNOWFLAKE_SCHEMA_" ]; 
    do
        read -p "Please input a DBT_SNOWFLAKE_SCHEMA:" DBT_SNOWFLAKE_SCHEMA_
    done

read -p "Please input a DBT_THREADS:" DBT_THREADS_

while [ ! -n "$DBT_THREADS_" ]; 
    do
        read -p "Please input a DBT_THREADS:" DBT_THREADS_
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

OPENLINEAGE_API_KEY_="$OPENLINEAGE_COMPANY_ID_|$OPENLINEAGE_TOKEN_"

echo your input dbt user name="$DBT_USER_" dbt password="$DBT_PASSWORD_"
echo your input dbt openlineage url="$OPENLINEAGE_URL_" openlineage namespace="$OPENLINEAGE_NAMESPACE_" openlineage APIKey="$OPENLINEAGE_API_KEY_"

#    if [ ! -n "$DBT_ACCOUNT_" ];then
# 	   read -p "Please input a dbt account:" DBT_ACCOUNT_
#    fi

export DBT_ACCOUNT=$DBT_ACCOUNT_
export DBT_USER=$DBT_USER_
export DBT_PASSWORD=$DBT_PASSWORD_
export DBT_SNOWFLAKE_DATABASE=$DBT_SNOWFLAKE_DATABASE_
export DBT_SNOWFLAKE_WAREHOUSE=$DBT_SNOWFLAKE_WAREHOUSE_
export DBT_SNOWFLAKE_SCHEMA=$DBT_SNOWFLAKE_SCHEMA_
export DBT_THREADS=$DBT_THREADS_
export OPENLINEAGE_NAMESPACE=$OPENLINEAGE_NAMESPACE_
export OPENLINEAGE_API_KEY=$OPENLINEAGE_API_KEY_
export OPENLINEAGE_URL=$OPENLINEAGE_URL_

# dbt run 

dbt-ol run
