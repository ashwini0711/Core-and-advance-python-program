#Creating a file ABC.txt and writing in it
with open("ABC.txt", "w") as file:
    file.write("Hello, this is a test file.\n")
    file.write("This is the second line.\n")

print("File 'ABC.txt' created successfully!")

#Reading the content from a text file "ABC.txt" line by line 
with open("ABC.txt", "r") as file:
    for line in file:
        print(line.strip())

'''OUTPUT
=========== RESTART: C:/Users/Ashwini/Downloads/Dat14_Assignment1.py ===========
File 'ABC.txt' created successfully!

=========== RESTART: C:/Users/Ashwini/Downloads/Dat14_Assignment1.py ===========
File 'ABC.txt' created successfully!
Hello, this is a test file.
This is the second line.
'''

