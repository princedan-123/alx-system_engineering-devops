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
            task_done = 0
            total_task = len(user_task)
            title = []
            for task in user_task:
                if task.get("completed") is True:
                    task_done += 1
                    title.append(task.get("title"))
            output = "Employee {} is done with tasks({}/{}):"\
                .format(user_name, task_done, total_task)
            print(output)
            for i in title:
                print("\t ", i)
