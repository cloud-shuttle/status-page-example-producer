# status-page-example-producer

status-page-example-producer

## File Structure

- dbt: Integrates with Snowflake and Openlineage, and uses Openlineage to retrieves metadata information about directories target/manifest.json, target/run_results.json

## dbt - openlineage:

#### How to run that:

1. Go the dbt directory

```
cd dbt/dbt_handler/
```

2. Create and activate python virtual environment

```
python -m venv .venv
source .venv/bin/activate
```

3. Install the package

```
pip install -r requirements.txt
```

4. To create a Postgres Database locally (skip if you already have a postgres database)

- run ./run_postgres.sh
- CREATE DATABASE my_statuspage;
- CREATE ROLE status_user LOGIN PASSWORD 'password123';
- GRANT ALL PRIVILEGES ON DATABASE my_statuspage TO status_user;

5. run "./postgres_dbt.sh" in another terminal

- Input the dbt connection information
- Input the openlineage information: token is like company_id|token

5. Quit the virtual environment

```
deactivate
```
