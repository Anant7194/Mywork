def fact(m):
    if(m<1):
        return 1
    else:
        return m*fact(m-1)
num=input("Enter any no:")
num2=int(num)
print("The factorial of number is",fact(num2))
