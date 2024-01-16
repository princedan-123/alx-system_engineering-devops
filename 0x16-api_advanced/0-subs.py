#!/usr/bin/python3
"""A script that queries reddit Api to return the number of subscribers."""

import requests


def number_of_subscribers(subreddit):
    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    response = requests.get(url, allow_redirects=False)
    if response.status_code == 404:
        return 0
    elif response.status_code == 200:
        result = response.json()
        data = result.get('data')
        count = data.get('subscribers')
        return count
