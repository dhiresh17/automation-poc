*** Settings ***
Resource  ../keywords/common_keywords.robot
Resource  ../keywords/login_keywords.robot
Test Setup  Initialise Application
Test Teardown  Terminate Application

*** Variables ***
${VALID_USERNAME}=  dhiresh
${INVALID_USERNAME}=  dhiresh1234
${VALID_PASSWORD}=  dhiresh
${INVALID_PASSWORD}=  password

*** Test Cases ***
Validate login Successful
    [Documentation]  Test Case for valid Login after entering valid username and password
    [Tags]    Smoke  Login
    When User Enters Username  ${VALID_USERNAME}
    AND User Enters Password  ${VALID_PASSWORD}
    AND Click Signin button
    Then User can see dashboard
    LOG  Validate login Successful - Test case execution completed

Validate login Failure
    [Documentation]  Test Case for Login fail after entering in-valid username and password
    [Tags]    Smoke  Login
    When User Enters Username  ${INVALID_USERNAME}
    AND User Enters Password  ${INVALID_PASSWORD}
    AND Click Signin button
    Then User can see error page
    LOG  Validate login Failure - Test case execution completed


