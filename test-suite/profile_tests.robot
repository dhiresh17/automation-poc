*** Settings ***
Documentation    Suite description
Resource  ../keywords/common_keywords.robot
Resource  ../keywords/login_keywords.robot
Resource  ../keywords/profile_keywords.robot
Resource  ../keywords/authentication_helper.robot
Library   ../utils/user_utils.py
Test Setup  Initialise Application
Test Teardown  Terminate Application

*** Test Cases ***
Test title
    [Documentation]  Test case to validate profile feature
    [Tags]    SMOKE
    &{user} =  Provided precondition
    ${username}=  evaluate  ${user["username"]}
    ${password}=  evaluate  ${user["password"]}
    When Authenticate user  ${username}  ${password}
    And  User navigates to profile

*** Keywords ***
Provided precondition
    ${user}=  create_random_user
    [return]  ${user}