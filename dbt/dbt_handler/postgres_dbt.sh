
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

python3 test.py

OPENLINEAGE_API_KEY_="$OPENLINEAGE_COMPANY_ID_|$OPENLINEAGE_TOKEN_"

echo your input dbt openlineage url="$OPENLINEAGE_URL_" openlineage namespace="$OPENLINEAGE_NAMESPACE_" openlineage APIKey="$OPENLINEAGE_API_KEY_"


export OPENLINEAGE_API_KEY=$OPENLINEAGE_API_KEY_
export OPENLINEAGE_URL=$OPENLINEAGE_URL_

# dbt run 

dbt-ol run
