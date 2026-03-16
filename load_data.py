import pandas as pd
import sqlite3

conn = sqlite3.connect('walmart.db')

conn.execute("DROP TABLE IF EXISTS stores")
conn.execute("DROP TABLE IF EXISTS train")
conn.execute("DROP TABLE IF EXISTS features")

train = pd.read_csv('train.csv')
stores = pd.read_csv('stores.csv')
features = pd.read_csv('features.csv')

train.to_sql('train', conn, if_exists='replace', index=False)
stores.to_sql('stores', conn, if_exists='replace', index=False)
features.to_sql('features', conn, if_exists='replace', index=False)

print("✅ train rows:", len(train))
print("✅ stores rows:", len(stores))
print("✅ features rows:", len(features))

conn.close()
