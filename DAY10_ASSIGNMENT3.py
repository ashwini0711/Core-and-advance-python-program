#Function to find duplicate values in a list
def find_duplicates(numbers):
    duplicates = []
    seen = set()
    
    for num in numbers:
        if num in seen and num not in duplicates:
            duplicates.append(num)
        else:
            seen.add(num)
    
    return duplicates

#Taking user input
numbers = list(map(int, input("Enter numbers separated by spaces: ").split()))

#Finding duplicates
duplicates = find_duplicates(numbers)

#Displaying results
if duplicates:
    print("Duplicate values:", duplicates)
else:
    print("No duplicates found.")
'''Output
Enter numbers separated by spaces: 1 4 7 1 4 2 1 9 1 2
Duplicate values: [1, 4, 2]
'''
