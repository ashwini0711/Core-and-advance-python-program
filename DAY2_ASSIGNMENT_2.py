#Day2_Assignment_2
#Declaring variables and print which variable is largest using ternary operators
#Declaring two variables 
#First number
num1 = int(input("Enter the first number: "))
#Second number
num2 = int(input("Enter the second number: ")) 
#Using a ternary operator to determine the largest number
# If num1 is greater than num2, largest is num1, else largest is num2
largest = num1 if num1 > num2 else num2 
#Printing the result
print("The largest number is:", largest)

'''Output
Enter the first number: 09
Enter the second number: 11
The largest number is: 11
'''
