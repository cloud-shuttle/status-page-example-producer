from sqlalchemy import create_engine
import pandas as pd
import os

username = os.environ.get('POSTGRES_USER')
password = os.environ.get('POSTGRES_PASSWORD')
database = os.environ.get('POSTGRES_DATABASE')
df = pd.DataFrame(
    {'name': ['User 1', 'User 2', 'User 3'], 'age': ['20', '24', '32']})
engine = create_engine(f'postgresql://{username}:{password}@localhost:5432/{database}')

try:
    df.to_sql('users', engine, if_exists='replace')
    print("success")
except:
    print("unsuccesfull")