#!/usr/bin/python3
"""A script that queries reddit Api"""

import requests


def recurse(subreddit, hot_list=[], after=None):
    """Prints the top ten hot post in a subreddit."""
    header = {'User-Agent': '1-top_ten.py'}
    url = f'https://www.reddit.com/r/{subreddit}/hot.json'
    response = requests.get(
            url, params={'after': after}, headers=header, allow_redirects=False
            )
    if response.status_code == 404:
        return None
    else:
        result = response.json().get('data', {}).get('children', [])
        for data in result:
            title = data.get('title')
            if title is not None:
                hot_list.append(title)
        after = response.json().get('data', {}).get('after')
        if after is not None:
            return recurse(subreddit, hot_list=hot_list, after=after)
        return hot_list
