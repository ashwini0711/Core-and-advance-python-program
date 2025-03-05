#List of employee records with name and department
employees = [
    {"name": "John Doe", "department": "Sales"},
    {"name": "Jane Smith", "department": "Marketing"},
    {"name": "Emily Johnson", "department": "Sales"},
    {"name": "Michael Brown", "department": "HR"}
]

'''Using list comprehension to filter employees who work in the 'Sales' department
& Convert their names to uppercase'''
sales_employees = [emp["name"].upper() for emp in employees if emp["department"] == "Sales"]

#Printing the final list of uppercase names of Sales employees
print(sales_employees) 

'''Output

===== RESTART: C:/Users/Ashwini/Downloads/Advancepython_Day2_Assignment1.py ====
['JOHN DOE', 'EMILY JOHNSON']
'''
