import json
import csv


with open("array_chaos.json","r") as f:
    data = json.load(f)

result = []

def flatten_file(x, result):

    
    if type(x)==dict:
        for value in x:
            flatten_file(value, result)
        result.append(str(x))

    elif type(x)==list:
        for item in x:
            flatten_file(item, result)

   
    else:
        result.append(str(x))

    return result


flatten_file(data, result)

print(result)

# to csv

with open("array_chaos.json","r", encoding = "UTF 8") as f:
   data=json.load(f)