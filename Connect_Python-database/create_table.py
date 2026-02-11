import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="SerEgg",
    database="company"
)
cursor = conn.cursor()

create_table_query = """
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2), 
)
"""
cursor.execute(create_table_query)
conn.commit()

print("Table created successfully")

cursor.close()
conn.close()
