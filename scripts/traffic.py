#!/usr/bin/env python3
import csv
from collections import defaultdict
from prettytable import PrettyTable

def parse_size(s):
    s = s.strip().upper()
    if s.endswith("KB"):
        return float(s[:-2]) * 1024
    if s.endswith("MB"):
        return float(s[:-2]) * 1024 * 1024
    if s.endswith("GB"):
        return float(s[:-2]) * 1024 * 1024 * 1024
    if s.endswith("B"):
        return float(s[:-1])
    return float(s)

def human(n):
    for unit in ["B","KB","MB","GB","TB"]:
        if n < 1024:
            return f"{n:.2f}{unit}"
        n /= 1024

traffic_sum = defaultdict(float)

with open("export.csv", newline="", encoding="utf-8-sig") as f:
    reader = csv.DictReader(f)
    reader.fieldnames = [f.strip() for f in reader.fieldnames]

    for row in reader:
        node = row["node_name"].strip()
        traffic_sum[node] += parse_size(row["traffic"])

# 排序并取前10
top10 = sorted(traffic_sum.items(), key=lambda x: x[1], reverse=True)[:10]

table = PrettyTable()
table.field_names = ["Rank", "Node", "Traffic"]

for i, (node, total) in enumerate(top10, 1):
    table.add_row([i, node, human(total)])

print(table)

total_traffic = sum(traffic_sum.values())
total_top10_traffic = sum(total for _, total in top10)
print(f"Total Traffic: {human(total_traffic)}")
print(f"Total Traffic of Top 10 Nodes: {human(total_top10_traffic)}")
