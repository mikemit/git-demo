*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go to  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Amazon