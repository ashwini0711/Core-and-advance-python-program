#Creating a class named Library
class Library:
    #Class attributes to keep track of total books and available books
    total_books = 5
    all_books = ["Python Basics", "Data Science", "Machine Learning", "Deep Learning", "Artificial Intelligence"]

    def __init__(self, name):
        #Instance attributes for the library member
        self.name = name
        self.borrowed_books = []

    def borrow_book(self, book):
        #Method to borrowing a book from the library
        if book in Library.all_books:
            Library.all_books.remove(book)  #Remove book from available books
            self.borrowed_books.append(book)  #Add book to member's borrowed list
            Library.total_books -= 1  #Decrease total books count
            print(self.name,'has borrowed', book)
        else:
            print("Book not available.")

    def return_book(self, book):
        #Method to returning a book to the library
        if book in self.borrowed_books:
            self.borrowed_books.remove(book)  #Remove book from member's borrowed list
            Library.all_books.append(book)  #Add book back to available books
            Library.total_books += 1  #Increase total books count
            print(self.name,'has returned',book)
        else:
            print(self.name,'did not borrow',book)

    @classmethod
    def view_library_books(cls):
        #Class method to display available books in the library
        print("Total books available: ",cls.total_books)
        print("Available books:", ", ".join(cls.all_books) if cls.all_books else "No books available")

#Sample Execution
member1 = Library("Aishwarya")  #Creating a library member
Library.view_library_books()  #Viewing available books
member1.borrow_book("Python Basics")  #Borrowing a book
Library.view_library_books()  #Viewing available books after borrowing
member1.return_book("Python Basics")  #Returning a book
Library.view_library_books()  #Viewing available books after returning



member2 = Library("Abhishekh")  #Creating a library member
Library.view_library_books()  #Viewing available books
member2.borrow_book("Machine Learning")  #Borrowing a book
Library.view_library_books()  #Viewing available books after borrowing
member2.return_book("Machine Learning")  #Returning a book
Library.view_library_books()  #Viewing available books after returning

'''Output
= RESTART: C:/Users/Ashwini/Downloads/Advance python_Day6_class & object_Assignment1.py
Total books available:  5
Available books: Python Basics, Data Science, Machine Learning, Deep Learning, Artificial Intelligence
Aishwarya has borrowed Python Basics
Total books available:  4
Available books: Data Science, Machine Learning, Deep Learning, Artificial Intelligence
Aishwarya has returned Python Basics
Total books available:  5
Available books: Data Science, Machine Learning, Deep Learning, Artificial Intelligence, Python Basics

Total books available:  5
Available books: Data Science, Machine Learning, Deep Learning, Artificial Intelligence, Python Basics
Abhishekh has borrowed Machine Learning
Total books available:  4
Available books: Data Science, Deep Learning, Artificial Intelligence, Python Basics
Abhishekh has returned Machine Learning
Total books available:  5
Available books: Data Science, Deep Learning, Artificial Intelligence, Python Basics, Machine Learning
'''
