#Creating a file ABC.txt and writing in it
with open("ABC.txt", "w") as file:
    file.write("Hello, this is a test file.\n")
    file.write("This is the second line.\n")

print("File 'ABC.txt' created successfully!")

#Opening file in read mode and using len function to count total number of words
with open("ABC.txt", "r") as file:
    words = file.read().split()
    print("Total words:", len(words))

'''OUTPUT
=========== RESTART: C:/Users/Ashwini/Downloads/Day14_Assignment2.py ===========
File 'ABC.txt' created successfully!
Total words: 11

'''
