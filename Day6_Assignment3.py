#Function to calculate factorial using a while loop
def factorial(n):
    if n < 0:
       print( "Factorial is not defined for negative numbers")
    result = 1
    while n > 0:
        result *= n  
        n -= 1 
    return result
#Input from user
num = int(input("Enter a number: "))
#Displaying the Result
print("Factorial of",num, "is ",factorial(num))

'''Output
Enter a number: 9
Factorial of 9 is  362880
'''
