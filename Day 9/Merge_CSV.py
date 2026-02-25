import pandas as pd
import glob

x = glob.glob("generated_csvs/*.csv")
data = []

for x in x:
    df = pd.read_csv(x)
    data.append(df)

merged_df = pd.concat(data, ignore_index=True)
merged_df.to_csv("merged_clean.csv", index = False)
