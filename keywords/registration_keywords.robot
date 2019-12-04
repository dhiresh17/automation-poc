*** Settings ***
Documentation    Suite description
Variables  ../page-locators/registration_locators.py
Library  SeleniumLibrary

*** Variables ***
${LOGIN_URL}  ${HOST}/index

*** Keywords ***
User Clicks on SignUp button
    Click Link  ${USER_SIGNUP}

User Enters First Name
    [Arguments]  ${FIRSTNAME}
    INPUT TEXT  ${FIRSTNAME_ELEMENT}  ${FIRSTNAME}

User Enters Last Name
    [Arguments]  ${LASTNAME}
    INPUT TEXT  ${LASTNAME_ELEMENT}  ${LASTNAME}

User Enters Phone
    [Arguments]  ${PHONE}
    INPUT TEXT  ${PHONE_ELEMENT}  ${PHONE}

User Enters Your Email
    [Arguments]  ${YOUREMAIL}
    INPUT TEXT  ${YOUREMAIL_ELEMENT}    ${YOUREMAIL}

User Enters Username
    [Arguments]  ${USERNAME}
    INPUT TEXT  ${USERNAME_ELEMENT}     ${USERNAME}

User Enters Password
    [Arguments]  ${PASSWORD}
    INPUT TEXT  ${PASSWORD_ELEMENT}     ${PASSWORD}

Click on confirm Signup button
    Click BUTTON  ${SIGN_UP_BUTTON}

User can see Login Page
    sleep  5 seconds
    ${URL}=  Get Location
    SHOULD BE EQUAL AS STRINGS  ${URL}  ${LOGIN_URL}

