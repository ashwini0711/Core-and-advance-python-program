#Creating a class named MovieLibrary
class MovieLibrary:
    # Class attribute: List of available movies in the library
    available_movies = ["CHHAVA", "KALKI 2898 AD", "PUSHPA 2", "Titanic", "Avatar"]

    def __init__(self, member_name):
        #Instance attributes
        self.member_name = member_name  #Name of the library member
        self.borrowed_movies = []  #List of movies borrowed by the member

    def borrow_movie(self, movie):
        #Method to borrow a movie from the library
        if movie in MovieLibrary.available_movies:
            MovieLibrary.available_movies.remove(movie)  #Remove movie from available list
            self.borrowed_movies.append(movie)  #Add movie to member's borrowed list
            print(self.member_name,"has borrowed",movie)
        else:
            print("Sorry",movie,"is not available")

    def return_movie(self, movie):
        #Method to return a borrowed movie to the library
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)  #Remove movie from member's borrowed list
            MovieLibrary.available_movies.append(movie)  #Add movie back to available list
            print(self.member_name,"has returned",movie)
        else:
            print(self.member_name,"did not borrow",movie)

    def view_borrowed_movies(self):
        #Method to view movies borrowed by the member
        if self.borrowed_movies:
            print(self.member_name,"has borrowed:",'-'.join(self.borrowed_movies))
        else:
            print(self.member_name,"has not borrowed any movies")

#Sample Execution
member1 = MovieLibrary("Aishwarya")  #Creating a library member
member1.borrow_movie("CHHAVA")  #Borrowing a movie
member1.view_borrowed_movies()  #Viewing borrowed movies
member1.return_movie("CHHAVA")  #Returning a movie
member1.view_borrowed_movies()  #Viewing borrowed movies after returning


member2 = MovieLibrary("Abhishekh")  #Creating a library member
member2.borrow_movie("KALKI 2898 AD")  #Borrowing a movie
member2.view_borrowed_movies()  #Viewing borrowed movies
member2.return_movie("KALKI 2898 AD")  #Returning a movie
member2.view_borrowed_movies()  #Viewing borrowed movies after returning

'''
Output
= RESTART: C:/Users/Ashwini/Downloads/Advance python_Day6_class & object_Assignment2.py
Aishwarya has borrowed CHHAVA
Aishwarya has borrowed: CHHAVA
Aishwarya has returned CHHAVA
Aishwarya has not borrowed any movies

Abhishekh has borrowed KALKI 2898 AD
Abhishekh has borrowed: KALKI 2898 AD
Abhishekh has returned KALKI 2898 AD
Abhishekh has not borrowed any movies
'''
