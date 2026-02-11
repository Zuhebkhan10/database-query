# install a Mysql-connector package.
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="SerEgg",
    database="ecommerce_db"
)
cursor=conn.cursor()
print("Connected successfully")


# fetch data
# cursor.execute("Select *from customer")
# cursor.execute("Select * from employee_info")
cursor.execute("Select * from orders ")

rows = cursor.fetchall()

for row in rows:
    print(row)
conn.close()

# Update the data

