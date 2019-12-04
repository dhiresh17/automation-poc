*** Settings ***
Resource  ../keywords/common_keywords.robot
Resource  ../keywords/registration_keywords.robot

Test Setup  Initialise Application
Test Teardown  Terminate Application

*** Variables ***
${FIRST_NAME}=  akanksha
${LAST_NAME}=  tripathi
${CONTACT}=  9881190321
${YOUR_EMAIL}=  automationuser5
${USER_NAME}=  automationuser5
${P@SSWORD}=   akanksha16


*** Test Cases ***
Validate Signup Successful
    [Documentation]  Test Case for valid Signup after entering all required fields on signup page.
    [Tags]    Smoke  Signup
    sleep  4 seconds
    When User Clicks on SignUp button
    And User Enters First Name  ${FIRST_NAME}
    And User Enters Last Name    ${LAST_NAME}
    And User Enters Phone  ${CONTACT}
    And User Enters Your Email  ${YOUR_EMAIL}
    And User Enters Username    ${USER_NAME}
    And User Enters Password    ${P@SSWORD}
    And Click on confirm Signup button
    Then User can see Login Page
    LOG  Validate signup Successful - Test case execution completed

