#Python program to find the largest among three numbers
#Taking user input
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
num3 = int(input("Enter third number: "))
#Finding the largest number
if num1 >= num2 and num1 >= num3:
    largest = num1
elif num2 >= num1 and num2 >= num3:
    largest = num2
else:
    largest = num3
#Displaying the result
print(f"The largest number is {largest}")
'''Output
Enter first number: 78
Enter second number: 23
Enter third number: 90
The largest number is 90
'''
