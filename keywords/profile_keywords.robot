*** Settings ***
Variables  ../page-locators/profile_locators.py
Library  SeleniumLibrary
Library   ../utils/user_utils.py

*** Keywords ***
User navigates to profile
    Click Link    ${PROFILE_DROPDOWN}
    Click Link    ${PROFILE_LINK}
    wait until page contains  My Profile  10
    sleep  5
    LOG  Navigated to Profile Page

User logs out
    Click Link    ${PROFILE_DROPDOWN}
    click link   ${PROFILE_LOGOUT_LINK}
    wait until page contains  Please sign in  10

Provided valid user
    ${user}=  create_random_user
    [return]  ${user}

Updated user details
    ${user}=  get_random_user_data
    log to console  ${user}
    [return]  ${user}

Updates profile data
    [Arguments]  ${UPDATED_DETAILS}
    INPUT TEXT  ${PROFILE_FIRSTNAME}  ${UPDATED_DETAILS['firstName']}
    INPUT TEXT  ${PROFILE_LASTNAME}  ${UPDATED_DETAILS['lastName']}
    INPUT TEXT  ${PROFILE_PHONE_NUMBER}  ${UPDATED_DETAILS['phone']}
    INPUT TEXT  ${PROFILE_EMAIL}  ${UPDATED_DETAILS['email']}
    click button  ${PROFILE_CHANGE_SETTINGS_BUTTON}
    wait until page contains  My Profile  10

Profile data should be valid
    [Arguments]  ${VALID_DATA}
    Match Firstname  ${VALID_DATA}
    Match Lastname  ${VALID_DATA}
    Match Phone  ${VALID_DATA}
    Match Email  ${VALID_DATA}
    LOG  Profile Data Validated

Match Firstname
    [Arguments]  ${VALID_DATA}
    ${FIRST_NAME}=  get value  ${PROFILE_FIRSTNAME}
    Match values  ${FIRST_NAME}  ${VALID_DATA['firstName']}

Match Lastname
    [Arguments]  ${VALID_DATA}
    ${LASTNAME}=  get value  ${PROFILE_LASTNAME}
    Match values  ${LASTNAME}  ${VALID_DATA['lastName']}

Match Phone
    [Arguments]  ${VALID_DATA}
    ${PHONE_NUMBER}=  get value  ${PROFILE_PHONE_NUMBER}
    Match values  ${PHONE_NUMBER}  ${VALID_DATA['phone']}

Match Email
    [Arguments]  ${VALID_DATA}
    ${EMAIL}=  get value  ${PROFILE_EMAIL}
    Match values  ${EMAIL}  ${VALID_DATA['email']}


Match values
    [Arguments]  ${EXPECTED}  ${ACTUAL}
    should be equal as strings  ${EXPECTED}  ${ACTUAL}