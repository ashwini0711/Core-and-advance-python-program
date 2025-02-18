# Finding the largest and smallest number without built-in functions
def find_largest_smallest(numbers):
#Initialize largest and smallest with the first element
    largest = smallest = numbers[0]
#Applying conditions
    for num in numbers:
        if num > largest:
            largest = num
        if num < smallest:
            smallest = num

    return largest, smallest
#Taking user input
numbers = list(map(int, input("Enter numbers separated by spaces: ").split()))
#Finding largest and smallest
largest, smallest = find_largest_smallest(numbers)
#Displaying results
print("Largest number:", largest)
print("Smallest number:", smallest)

'''Output
======== RESTART: C:/Users/Ashwini/OneDrive/ドキュメント/Day10_Assignment_2.py =======
Enter numbers separated by spaces: 9 11
Largest number: 11
Smallest number: 9
'''
