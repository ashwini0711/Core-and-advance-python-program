#Python program to handle a ZeroDivisionError exception
#Try block to attempt division
try:
    #Taking user input for numerator integer value
    a = int(input("Enter numerator: "))
    
    #Taking user input for denominator integer value
    b = int(input("Enter denominator: "))
    
    #Performing division and printing the result
    print("Result:", a / b)

#Exception handling for division by zero
except ZeroDivisionError:
    #Prints an error message when denominator is zero
    print("Error: Cannot divide by zero")

'''Output
=========== RESTART: C:/Users/Ashwini/Downloads/Day13_Assignment1.py ===========
Enter numerator: 7
Enter denominator: 0
Error: Cannot divide by zero
'''
