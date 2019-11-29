*** Settings ***
Documentation  This file contains common keywords
Variables  ../variables/GlobalVariables.py


*** Keywords ***
Initialise Application
    open browser  ${APPURL}  ${BROWSER}
    maximize browser window
    validate initialisation

Terminate Application
    close browser

Validate Initialisation
    title should be  ${HOME_PAGE_TITLE}
