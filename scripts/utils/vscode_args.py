
'''
将 terminal 输入的参数转换成 vscode launch.json 中的 args 格式
'''

x = input("Enter program args: ")

args = x.split()
print()
for arg in args:
    print(f"\"{arg}\",", end=" ")
print()