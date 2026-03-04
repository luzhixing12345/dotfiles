

x = input("Enter program args: ")

args = x.split()
print()
for arg in args:
    print(f"\"{arg}\",", end=" ")
print()