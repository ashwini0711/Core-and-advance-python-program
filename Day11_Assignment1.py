#Defining a function to count alphabets, digits, and symbols in a given string
def count_chars_digits_symbols(s):
    #Initializing counters for alphabets, digits, and symbols
    chars = digits = symbols = 0

    ''' 
    Looping through each character in the string.
    Using if-elif-else conditions to check whether 
    the character is an alphabet, digit, or symbol.
    '''
    for char in s:
        if char.isalpha():  
            chars += 1
        elif char.isdigit():  
            digits += 1
        else:  
            symbols += 1

    # Displaying the results
    print(f"Chars = {chars}")   
    print(f"Digits = {digits}") 
    print(f"Symbols = {symbols}") 

#Given input string
input_str = "P@#yn26at^&i5ve"

#Calling the function with input_str as the argument
count_chars_digits_symbols(input_str)

'''Output
========= RESTART: C:/Users/Ashwini/Downloads/Day11_Assignment1.py =========
Chars = 8
Digits = 3
Symbols = 4
'''
