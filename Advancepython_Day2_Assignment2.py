#List of email addresses
emails = ["alice@example.com", "bob@sample.org", "charlie@mydomain.net"]

#Using list comprehension to extract the domain part (the part after '@')
domains = [email.split("@")[1] for email in emails]  
'''
email.split("@") splits the email into a list
[1] extracts the second part (domain)
'''

#Printing the extracted domain names
print(domains) 

'''Output
===== RESTART: C:/Users/Ashwini/Downloads/Advancepython_Day2_Assignment2.py ====
['example.com', 'sample.org', 'mydomain.net']
'''
