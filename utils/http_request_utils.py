import requests
from robot.api import logger

def create_post_request(URL,HEADERS,REQUEST_DATA):
    response = requests.post(url=URL, data=REQUEST_DATA,headers=HEADERS)
    logger.console(response)
    return response

def create_get_request(URL,HEADERS):
    response = requests.post(URL,headers=HEADERS)
    logger.console(response)
    return response