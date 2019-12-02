*** Settings ***
Documentation  This file contains common keywords
Variables  ../variables/GlobalVariables.py
Library     OperatingSystem
Library     SeleniumLibrary    screenshot_root_directory=front-end-screenshots  run_on_failure=Capture page screenshot

*** Keywords ***
Initialise Application
    open browser  ${APPURL}  ${BROWSER}
    maximize browser window
    validate initialisation

Terminate Application
    Run Keyword If Test Failed      Capture page screenshot
    close browser

Validate Initialisation
    title should be  ${HOME_PAGE_TITLE}
