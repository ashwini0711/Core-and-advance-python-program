#Defining function remove_duplicate_words(s) that takes a string s as input
def remove_duplicate_words(s):
    words = s.split() 
    result = []  
    seen = set()  

    for word in words:
        if word not in seen:
            seen.add(word)
            result.append(word)

    return " ".join(result)  
#Join words into a string
#Given input
input_str = "String and String Function"
#Calling the function
output_str = remove_duplicate_words(input_str)
#Printing the final result
print("Output:", output_str)

'''Output
=========== RESTART: C:/Users/Ashwini/Downloads/Day11_Assignment2.py ===========
Output: String and Function
'''
