import random
import sys

sys.path.append("..")
from robot.api import logger
from variables.global_variables import HOST
from http_request_utils import create_post_request

class user_utils:
    def getFirstName(self):
        return "AutomationUserFirstName"+str(random.randint(1,100000000))


    def getLastName(self):
        return "AutomationUserLastName"+str(random.randint(1,100000000))


    def getPhoneNo(self):
        return random.randint(1000000000,10000000000)


    def getEmail(self):
        return "AutomationUserEmail"+str(random.randint(1,100000000))+"@gmail.com"


    def getUsername(self):
        return "AutomationUserUsername"+str(random.randint(1,100000000))


    def getPassword(self):
        return "AutomationUserPassword"+str(random.randint(1,100000000))


    def create_random_user(self):
        user=self.get_random_user_data()
        logger.info(user)
        logger.console(user)
        header = {'Content-Type': 'application/x-www-form-urlencoded'}
        signupUrl=HOST+"/signup"
        response=create_post_request(signupUrl,header,user)
        return user

    def get_random_user_data(self):
        user = {
            'firstName': self.getFirstName(),
            'lastName': self.getLastName(),
            'phone': self.getPhoneNo(),
            'email': self.getEmail(),
            'username': self.getUsername(),
            'password': self.getPassword()
        }
        return user
