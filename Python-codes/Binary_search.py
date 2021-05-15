def binary_search(mylist, find): 
    while len(mylist) > 0: 
        mid = (len(mylist))//2
        if mylist[mid] == find: 
            return True
        else:
            if mylist[mid]>find:
                mylist=mylist[mid+1:]
            elif mylist[mid]<find:
                mylist=mylist[:mid]
            else:
                return False
        
  
print(binary_search([1,2,3,4,5,6,7,8],6))
