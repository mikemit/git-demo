*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin webtest
    Open Browser  about:blank  chrome

End webtest
    Close Browser