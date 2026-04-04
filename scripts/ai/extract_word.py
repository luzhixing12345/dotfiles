import re
from pathlib import Path


source_path = Path("1.txt")
target_path = Path("1.new.txt")

text = source_path.read_text(encoding="utf-8")
words = re.findall(r"[A-Za-z]+", text)

# 按出现顺序去重
unique_words = list(dict.fromkeys(words))

target_path.write_text(",".join(unique_words), encoding="utf-8")
