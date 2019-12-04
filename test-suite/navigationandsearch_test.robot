*** Settings ***
Resource  ../keywords/common_keywords.robot
Resource  ../keywords/login_keywords.robot
Resource  ../keywords/navigationandsearch_keywords.robot
Test Setup  Initialise Application
Test Teardown  Terminate Application

*** Variables ***
${USERNAME}=  rafik
${PASSWORD}=  rafik
${VALID_SEARCH}=  100
${INVALID_SEARCH}=  admin

*** Test Cases ***
Validate user can navigate to Next Page and Previous page on Accounts -> Primary page and do valid and invalid search
    [Documentation]  Test case for navigating next and previous page and valid and invalid search
    [Tags]  Navigation  Search  Smoke
    When User Enters Username  ${USERNAME}
    And User Enters Password  ${PASSWORD}
    And Click Signin button
    Then User can see dashboard
    LOG  Validate login Successful - Test case execution completed
    Then User Click on Accounts Primary
    Then User counts the rows
    Then user takes photo
    Then user pauses
    Then user click on next link
    Then user counts the rows
    Then user takes photo
    Then user pauses
    Then user click on previous link
    Then user takes photo
    Then user pauses
    Then user does valid search  ${VALID_SEARCH}
    Then user pauses
    Then user counts the rows
    Then user takes photo
    Then User Clear Search Field
    Then User does Invalid Search  ${INVALID_SEARCH}
    Then user sees the message
    Then user takes photo
    Then user pauses
    Then user logout from piggy app