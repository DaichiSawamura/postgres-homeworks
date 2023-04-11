import psycopg2
import csv

"""Скрипт для заполнения данными таблиц в БД Postgres."""

with psycopg2.connect(
        host='localhost',
        database='north',
        user='postgres',
        password='210199'
) as conn:
    with conn.cursor() as cur:
        with open("employees_data.csv") as f:
            next(f)
            data = csv.reader(f)
            for i in data:
                cur.execute("INSERT INTO employees VALUES (%s, %s, %s, %s, %s)",
                            (i[0], i[1], i[2], i[3], i[4]))
        with open("orders_data.csv") as f:
            next(f)
            data = csv.reader(f)
            for i in data:
                cur.execute("INSERT INTO orders VALUES (%s, %s, %s, %s, %s)",
                            (i[0], i[1], i[2], i[3], i[4]))
        with open("customers_data.csv") as f:
            next(f)
            data = csv.reader(f)
            for i in data:
                cur.execute("INSERT INTO customers VALUES (%s, %s, %s)",
                            (i[0], i[1], i[2]))

conn.close()
