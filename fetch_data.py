import requests
import pandas as pd


# URL of API, requesting 1000 rows
api_url = "https://public.opendatasoft.com/api/records/1.0/search/?dataset=all-vehicles-model&rows=1000"

# to fetch the data
response = requests.get (api_url)
data = response.json()


# saving to csv
records = [record['fields'] for record in data['records']]
df = pd.DataFrame(records)
df.to_csv("all_vehicles_model.csv", index = False)
print("Dataset saved as csv")
