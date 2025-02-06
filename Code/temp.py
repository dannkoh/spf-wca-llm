import json


folder="microsoft/Phi-4"
filepath=f"/Users/dankoh/jpf/spf-wca-llm/Results/unmodified/{folder}/stats/individual_stats.json"


with open(filepath,"r") as f:
    data = json.load(f)

for program in data:
    print(program, data[program]["succeeded"])