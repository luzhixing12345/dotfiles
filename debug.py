import debugpy

a = 10
b = 20

debugpy.listen(5678)
print("Waiting for debugger attach...")
debugpy.wait_for_client()
debugpy.breakpoint()

x = 10
y = 20