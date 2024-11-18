
import mysql.connector as connector

connection = connector.connect(host='localhost', username='root', password='StrongPassword123!', database='LittleLemonDB')

if connection.is_connected():
    print('the connection is successfully')

cursor = connection.cursor()

show_table = """SHOW TABLES;"""

cursor.execute(show_table)

results = cursor.fetchall()

print('the list of table:')

for result in results:
    print(result)

order_greater_than_60 = """SELECT c.CustomerName, c.ContactDetail, o.TotalCost FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID WHERE o.TotalCost > 60;"""

cursor.execute(order_greater_than_60)

results = cursor.fetchall()

cols = cursor.column_names

print('\nThe list of orders that customers paid more than 60 for their meals: ')

print(cols)

for result in results:
    print(result)

cursor.close()
connection.close()
print('the connection is closed')
