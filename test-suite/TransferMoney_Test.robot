*** Settings ***
Resource  ../keywords/common_keywords.robot
Resource  ../keywords/Transfer_keywords.robot
Resource  ../test-suite/login_tests.robot
Variables  ../page-locators/login_locators.py
Variables  ../page-locators/TransferMoney.py
Resource   ../keywords/authentication_helper.robot
Test Setup  Initialise Application
Test Teardown  Terminate Application

*** Variables ***
${VALID_USERNAME}=  dhiresh
${VALID_PASSWORD}=  dhiresh
${AMOUNT}=  10000

*** Test Cases ***
Validate Transfer Money Between Accounts
    [Documentation]  Test Case for valid transfer money between accounts
    [Tags]    Smoke  Transfer
    When Authenticate user  ${VALID_USERNAME}  ${VALID_PASSWORD}
    AND Navigate to transfer page
    AND Select Transfer Money between accounts
    AND Select the account who whould like to transfer From
    AND Select Primary Account
    AND Select the account who whould like to transfer To
    AND Select Saving Account
    AND Enter the amount who would like to transfer  ${AMOUNT}
    AND Click transfer button
    LOG  Validate transfer Money Between Accounts Successful - Test case execution completed

Validate Transfer Money to someone else Accounts
        [Documentation]  Test Case for valid transfer money to someone else
       [Tags]  Smoke Transfer
       When Authenticate user  ${VALID_USERNAME}  ${VALID_PASSWORD}
        AND Display transfer page
        AND Select Transfer Money to someone else
        AND Select Recipient
        AND Select account who whould like to transfer From
        AND Select the Saving Account
        AND Enter amount who would like to transfer  ${AMOUNT}
        AND Click on transfer button
        LOG  Validate transfer Money to someone else Accounts Successful - Test case execution completed


