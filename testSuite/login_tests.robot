*** Settings ***
Resource  ../keywords/common_keywords.robot
Resource  ../keywords/login_keywords.robot
Test Setup  Initialise Application
Test Teardown  Terminate Application

*** Test Cases ***
Validate Successful login
    [Documentation]  Test Case for valid Login after entering valid username and password
    [Tags]    Smoke  Login
    When User Enters Username  dhiresh
    AND User Enters Password  dhiresh
    AND Click Signin button
    Then User can see dashboard
    LOG  Validate Successful login - Test case execution completed


