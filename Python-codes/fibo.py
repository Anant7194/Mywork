counter=0
n1=0
n2=1
n=int(input("Enter the number of terms:"))
print("Fibonacci Sries....")
while counter<n:

    print(n1)
    nth=n1+n2
    n1=n2
    n2=nth
    counter=counter+1
