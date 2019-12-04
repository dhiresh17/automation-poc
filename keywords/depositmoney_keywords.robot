*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Variables  ../page-locators/depositmoney_locators.py
Library  SeleniumLibrary

*** Variables ***
${AMOUNT}  1000

*** Keywords ***
User Clicks on Go To Deposit
    Click Element  ${DEPOSIT}
    Sleep  10 seconds

User Selects AccountType
    Click Element  ${ACCOUNT_TYPE}
    Click Element  ${D_SAVINGS}

User Enters Amount to be deposited
    Input Text  amount  ${AMOUNT}

Click Deposit button
    Click button  ${DEPOSIT_BUTTON}