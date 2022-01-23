print("Hello,World")
"""myVariable=5
print(myVariable)
myVariable=6"""
#variable will overwrite
'''myVariable=9
print(myVariable)'''
x=1
y=2.8
i="Hello"
#complex number
z= 1j
print(type(x))
print(type(y))
print(type(z))
print(type(i))
print(type(x),type(y),type(z),type(i))

#String
a="Hello python"
b='welcome to python'
print(a)
print(b)

#split
c="Hello, World!"
print(c.split("W"))

#concat
age=36
salary=45678
txt="My name is Ria {}, I am {}"
print(txt.format(age,salary))
txt="My name is Ria {1}, I am {0}"
print(txt.format(age,salary))

#casting
a=int(2.8) # o- 2
print(a)
