*** Settings ***
Variables  ../page-locators/navigationandsearch_locators.py
Library  SeleniumLibrary

*** Keywords ***
User Logout From Piggy App
    CLICK ELEMENT  ${DROPDOWN_ELEMENT}
    SLEEP  2s
    CLICK ELEMENT  ${LOGOUTLINK_ELEMENT}

User Click on Accounts Primary
    CLICK ELEMENT  ${DROPDOWNACCOUNTS_ELEMENT}
    SLEEP  2s
    CLICK ELEMENT  ${PRIMARYLINK_ELEMENT}

User Click on Next Link
    CLICK LINK  ${NEXTLINK_ELEMENT}
    
User Click on Previous Link
    CLICK LINK  ${PREVIOUSLINK_ELEMENT}

User does Valid Search
    [Arguments]  ${VALID_SEARCH}
    INPUT TEXT  ${SEARCH_ELEMENT}  ${VALID_SEARCH}

User does Invalid Search
    [Arguments]  ${INVALID_SEARCH}
    INPUT TEXT  ${SEARCH_ELEMENT}  ${INVALID_SEARCH}

User Clear Search Field
    CLEAR ELEMENT TEXT  ${SEARCH_ELEMENT}

User Takes Photo
    CAPTURE PAGE SCREENSHOT

User Pauses
    SLEEP  2s

User counts the rows
    ${ROWCOUNT}=  GET ELEMENT COUNT  ${EXAMPLETABLEROWCOUNT_ELEMENT}
    LOG  ${ROWCOUNT}

User Sees the Message
    ${MSG}=  GET TEXT  ${EXAMPLETABLEROWCOUNT_ELEMENT}
    LOG  ${MSG}