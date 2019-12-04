*** Settings ***
Variables  ../page-locators/profile_locators.py

*** Keywords ***
User navigates to profile
    Click Link    PROFILE_DROPDOWN
    Click Link    PROFILE_LINK

