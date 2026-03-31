#!/usr/bin/env python3

'''
查看 v2ray 节点的流量使用情况，统计每个节点的总流量，并显示前10个节点的流量排名。
需要先将 v2ray 的流量日志导出为 CSV 格式，包含至少 "node_name" 和 "traffic" 两列。
'''


import csv
import os
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

if not os.path.exists("export.csv"):
    print("Error: export.csv not found. Please export the v2ray traffic log to CSV format and save it as export.csv.")
    exit(1)

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
