import random
import sys

sys.path.append("..")
from variables.global_variables import HOST
from http_request_utils import create_post_request


def getFirstName():
    return "AutomationUserFirstName"+str(random.randint(1,100000000))


def getLastName():
    return "AutomationUserLastName"+str(random.randint(1,100000000))


def getPhoneNo():
    return random.randint(1000000000,10000000000)


def getEmail():
    return "AutomationUserEmail"+str(random.randint(1,100000000))+"@gmail.com"


def getUsername():
    return "AutomationUserUsername"+str(random.randint(1,100000000))


def getPassword():
    return "AutomationUserPassword"+str(random.randint(1,100000000))


def create_random_user():
    user = {
        'firstName': getFirstName(),
        'lastName': getLastName(),
        'phone': getPhoneNo(),
        'email': getEmail(),
        'username': getUsername(),
        'password': getPassword()
    }
    print(user)
    header = {'Content-Type': 'application/x-www-form-urlencoded'}
    signupUrl=HOST+"/signup"
    response=create_post_request(signupUrl,header,user)
    return response