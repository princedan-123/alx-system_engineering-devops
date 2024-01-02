#!/usr/bin/python3
"""A python script that sends a request to an API endpoint."""
import json
import sys
import urllib.request

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
            employee = {}
            employee_task = []
            with open("USER_ID.json", "w") as json_file:
                for task in user_task:
                    employee["task"] = str(task.get("title"))
                    employee["completed"] = str(task.get("completed"))
                    employee["username"] = str(user.get("username"))
                    employee_task.append(employee)
                record = {}
                record[user.get("id")] = employee_task
                json.dump(record, json_file)
