def div(a, b):
#This function takes two numbers as input and returns their division.
#If the denominator is zero, it returns an error message.
    if b == 0:
        return "Error: Division by zero is not allowed."
    return a / b
#Calling the function with two numbers
num1 = int(input("Enter the first number : "))
num2 = int(input("Enter the second number : "))
result = div(num1, num2)
#Displaying the result
print("The result of dividing num1 by num2 is:", result)

'''Output
Enter the first number : 20
Enter the second number : 5
The result of dividing num1 by num2 is: 4.0
'''
