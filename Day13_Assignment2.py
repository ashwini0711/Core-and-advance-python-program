'''Python program that prompts the user to input an integer and raises a
ValueError exception if the input is not a valid integer'''
try:
    #Prompt the user to enter an integer
    num = int(input("Enter an integer: "))
    
    #If the input is successfully converted to an integer, print it
    print("You entered:", num)  

#Catch the ValueError exception if the input is not a valid integer
except ValueError:
    # Raise a new ValueError with a custom error message
    raise ValueError("Invalid input! Please enter a valid integer.")

'''Output
=========== RESTART: C:/Users/Ashwini/Downloads/Day13_Assignment2.py ===========
Enter an integer: 0.9
Traceback (most recent call last):
  File "C:/Users/Ashwini/Downloads/Day13_Assignment2.py", line 5, in <module>
    num = int(input("Enter an integer: "))
ValueError: invalid literal for int() with base 10: '0.9'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "C:/Users/Ashwini/Downloads/Day13_Assignment2.py", line 13, in <module>
    raise ValueError("Invalid input! Please enter a valid integer.")
ValueError: Invalid input! Please enter a valid integer.
'''
