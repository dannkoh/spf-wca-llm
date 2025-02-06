import json


folder="microsoft/Phi-3.5-mini-instruct-8bit"
filepath=f"/Users/dankoh/jpf/spf-wca-llm/Code/{folder}/stats/individual_stats.json"


with open(filepath,"r") as f:
    data = json.load(f)

for program in data:
    print(program, data[program]["succeeded"])