
'''
清除论文引用的 []
'''

import re

while True:
    string = input("Enter a string: ")
    # 去掉 [1123]
    pattern = r'\[.*?\]'
    string = re.sub(pattern, '', string)
    # 去掉 [1123] 后面的空格
    # string = string.strip()
    print("-" * 50)
    print(string)
    