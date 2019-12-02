*** Settings ***
Variables  ../page-locators/login_locators.py
Library  SeleniumLibrary

*** Variables ***
${DASHBOARD_URL}  ${HOST}/userFront
${LOGIN_ERROR_PAGE}  ${HOST}/index?error

*** Keywords ***
User Enters Username
    [Arguments]  ${USERNAME}
    INPUT TEXT  ${USERNAME_ELEMENT}  ${USERNAME}

User Enters Password
    [Arguments]  ${PASSWORD}
    INPUT TEXT  ${PASSWORD_ELEMENT}  ${PASSWORD}

Click Signin button
    CLICK BUTTON  ${SIGN_IN_BUTTON}

User can see dashboard
    sleep  5 seconds
    ${URL}=  Get Location
    SHOULD BE EQUAL AS STRINGS  ${URL}  ${DASHBOARD_URL}

User can see error page
    sleep  5 seconds
    ${URL}=  Get Location
    SHOULD BE EQUAL AS STRINGS  ${URL}  ${LOGIN_ERROR_PAGE}
