#!/usr/bin/python3
"""A python script that sends a request to an API endpoint."""

import urllib.request
import sys
import json
import csv

if __name__ == "__main__":
    if len(sys.argv) == 2 and sys.argv[1].isdigit():
        user_id = sys.argv[1]
        url = f"https://jsonplaceholder.typicode.com/users/{user_id}/"
        with urllib.request.urlopen(url) as response:
            user = json.loads(response.read())
            user_name = user.get("name")
        endpoint = "https://jsonplaceholder.typicode.com/todos"
        with urllib.request.urlopen(endpoint) as response:
            todos = json.loads(response.read())
            user_task = []
            for task in todos:
                if task.get("userId") == int(user_id):
                    user_task.append(task)
            with open("USER_ID.csv", "w") as csv_file:
                write_obj = csv.writer(csv_file)
                for task in user_task:
                    row = []
                    row.append(str(user_id))
                    row.append(user_name)
                    row.append(task.get("completed"))
                    row.append(task.get("title"))
                    write_obj.writerow(row)
