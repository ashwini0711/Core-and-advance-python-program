#Function to check if a number is a palindrome using a for loop
def is_palindrome(n):
#Store the original number
    original = n  
#Initialize reversed number
    reversed_num = 0  
#Get the number of digits
    num_digits = len(str(n))  
#Using a for loop to reverse the number
    for _ in range(num_digits):
        digit = n % 10  
        reversed_num = reversed_num * 10 + digit  
        n //= 10  
#Check if original and reversed numbers match    
    return original == reversed_num  
#Input from user
num = int(input("Enter a number: "))
#Checking if the number is palindrome
if is_palindrome(num):
    print("The given number is a Palindrome",num)
else:
    print("The given number is NOT a Palindrome",num)

'''Output
Enter a number: 121
The given number is a Palindrome 121
Enter a number: 142
The given number is NOT a Palindrome 142
'''
