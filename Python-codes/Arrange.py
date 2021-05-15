"""Complete the merge_the_tools function in the editor below.

merge_the_tools has the following parameters:

string s: the string to analyze
int k: the size of substrings to analyze"""

from collections import OrderedDict # to remove duplicate values from any string , can be done in two ways ordered or unordered
def merge_the_tools(string, k):
    chunks = [string[i:i+k] for i in range(0, len(string), k)]
    for i in chunks:
        print(remove_duplicate(i))
        
def remove_duplicate(str):
  return "".join(OrderedDict.fromkeys(str))
    # your code goes here

if __name__ == '__main__':
    string, k = raw_input(), int(raw_input())
    merge_the_tools(string, k)
    
