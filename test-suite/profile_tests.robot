*** Settings ***
Documentation    Test Suite to validate profile functionalities
Resource  ../keywords/common_keywords.robot
Resource  ../keywords/profile_keywords.robot
Resource  ../keywords/authentication_helper.robot
Test Setup  Initialise Application
Test Teardown  Terminate Application

*** Test Cases ***
Validate Profile
    [Documentation]  Test case to validate profile feature
    [Tags]    SMOKE  PROFILE
    ${user} =  Provided valid user
    given Authenticate user  ${user['username']}  ${user['password']}
    when User navigates to profile
    then Profile data should be valid  ${user}
    LOG  Validate Profile - Test case execution completed

Update Profile
    [Documentation]  Test case to Update profile feature
    [Tags]    SMOKE  PROFILE
    ${user} =  Provided valid user
    ${updatedDetails}=  Updated user details
    given Authenticate user  ${user['username']}  ${user['password']}
    when User navigates to profile
    And Updates profile data  ${updatedDetails}
    Then User logs out
    and Authenticate user  ${user['username']}  ${user['password']}
    when User navigates to profile
    then Profile data should be valid  ${updatedDetails}
    LOG  Update Profile - Test case execution completed