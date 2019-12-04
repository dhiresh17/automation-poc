*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Resource  ../keywords/authentication_helper.robot
Resource  ../keywords/common_keywords.robot
Resource  ../keywords/depositmoney_keywords.robot
Library  SeleniumLibrary
Test Setup  Initialise Application
Test Teardown  Terminate Application

*** Variables ***
${VALID_USERNAME}=  dhiresh
${INVALID_USERNAME}=  dhiresh1234

*** Test Cases ***
User Can Deposit Money
    [Documentation]  Test Case for valid Login after entering valid username and password
    [Tags]    Smoke  deposit
    When Authenticate user  ${VALID_USERNAME}  ${VALID_USERNAME}
    AND User Clicks on Go To Deposit
    AND User Selects AccountType
    AND User Enters Amount to be deposited
    AND Click Deposit button
    Then User can see dashboard
    LOG  Depositting Money Successful - Test case execution completed


