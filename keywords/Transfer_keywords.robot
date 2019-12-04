*** Settings ***
Variables  ../page-locators/TransferMoney.py
Library  SeleniumLibrary

*** Variables ***
${DASHBOARD_URL}  ${HOST}/userFront
${LOGIN_ERROR_PAGE}  ${HOST}/index?error

*** Keywords ***

Navigate to transfer page
       CLICK ELEMENT  ${TRANSFER}

Select Transfer Money between accounts
        CLICK ELEMENT  ${BETWEEN_ACCOUNT}
        sleep  5 seconds
Select the account who whould like to transfer From
        CLICK ELEMENT  ${TRANSFER_FROM}
Select Primary Account
        CLICK ELEMENT  ${TRANSFER_PRIMARY}
Select the account who whould like to transfer To
        CLICK ELEMENT  ${TRANSFER_TO}
Select Saving Account
        CLICK ELEMENT  ${TRANSFER_SAVING}
Enter the amount who would like to transfer
        [Arguments]  ${AMOUNT}
        INPUT TEXT  ${TRANSFER_AMOUNT}  ${AMOUNT}
Click transfer button
        CLICK BUTTON   ${TRANSFER_BUTTON}


Display transfer page
       CLICK ELEMENT  ${TRANSFER}
Select Transfer Money to someone else
        CLICK ELEMENT  ${SOMEONE_ELSE}
        sleep  5 seconds
Select Recipient
        CLICK ELEMENT  ${RECIPIENT}
Select account who whould like to transfer From
        CLICK ELEMENT  ${ACCOUNT_TYPE}
Select the Saving Account
        CLICK ELEMENT  ${TRANSFER_SAVING_ACCOUNT}
Enter amount who would like to transfer
        [Arguments]  ${AMOUNT}
        INPUT TEXT  ${TRANSFER_AMOUNT}  ${AMOUNT}
Click on transfer button
        CLICK BUTTON   ${TRANSFER_BUTTON}


