#Reversing a number by using while loop
#Function to reverse a number
def reverse_number(n):
    rev = 0
# Check if the number is negative
    negative = n < 0  
#Work with the absolute value 
    n = abs(n)
    
    while n:
        rev = rev * 10 + n % 10
        n //= 10
#Restore the sign if negative
    return -rev if negative else rev  
#Input from user
num = int(input("Enter a number: "))
#Displaying the reversed number
print("Reversed Number:", reverse_number(num))

'''Output
Enter a number: 56789
Reversed Number: 98765
'''
