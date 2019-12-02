*** Settings ***
Resource  login_keywords.robot

*** Keywords ***
Authenticate user
    [Documentation]  Helper method to login user
    [Arguments]  ${USERNAME}  ${PASSWORD}
    User Enters Username  ${USERNAME}
    User Enters Password  ${PASSWORD}
    Click Signin button