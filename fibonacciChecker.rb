# Fibonacci Checker
# Have the function FibonacciChecker(num) return the string yes if the number given is part of the Fibonacci sequence. This sequence is defined by: Fn = Fn-1 + Fn-2, which means to find Fn you add the previous two numbers up. The first two numbers are 0 and 1, then comes 1, 2, 3, 5 etc. If num is not in the Fibonacci sequence, return the string no.
# Examples
# Input: 34
# Output: yes
# Input: 54
# Output: no
# Browse Resources
# Search for any help or documentation you might need for this problem. For example: array indexing, Ruby hash tables, etc.

def fibonacciChecker(num)
    # code goes here
    siguiente=1
    actual=0
    (1..100).each do 
        siguiente,actual = siguiente+actual, siguiente
        if num== actual
           return "yes"
        end
    end
     return "no"
  
  end

  puts fibonacciChecker(34)
  puts fibonacciChecker(54)