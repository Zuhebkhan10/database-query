import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="SerEgg",
    database="company"
)

print("Connected successfully")
cursor=conn.cursor()
# Check the table in databases;
# cursor.execute("Show tables")
# for i in cursor:
#     print(i)

# insert the data into table
# cursor.execute(
# "INSERT INTO employee (emp_id, emp_name, age, salary) VALUES (%s,%s,%s,%s)",
# (1, 'Amit Sharma', 25, 35000.00),
#
# )
# conn.commit()

# Read the data from employee table #

# cursor.execute("Select * from employee")
# rows=cursor.fetchall()
# for i in rows:
#     print(i)
# conn.close()

# update the student data
# update_info="Update employee Set emp_name=%s where salary=%s"
# values=('Zuheb khan',35000.00)
#
# cursor.execute(update_info,values)
# conn.commit()


# Delete or remove employee information
emp_remove="Delete from employee where emp_name=%s"
cursor.execute(emp_remove,("kaif khan",))
conn.commit()

