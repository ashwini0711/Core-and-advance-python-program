# Python program to check if a year is a leap year or not
# Taking user input
year = int(input("Enter a year: "))
#Using the condition to check year is a leap year
#Conditions
if (year % 4 == 0 and year % 100 != 0):
    print("Year is a leap year")
else:
    print("Year is not a leap year")
'''Output
Enter a year: 2012
Year is a leap year
'''
    
