import json


folder="gpt-3.5-turbo"
filepath=f"/Users/dankoh/jpf/spf-wca-llm/Results/modified/{folder}/stats/individual_stats.json"


with open(filepath,"r") as f:
    data = json.load(f)

for program in data:
    print(program, data[program]["succeeded"])