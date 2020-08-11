*** Settings ***
Documentation  This is some basisc info abut the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Test Setup  Begin webtest
Test Teardown  End Webtest

*** Variables ***
${Browser} =  Chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
User can search for poducts
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke extra 5e versie
    Amazon.Search for products

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for products
    Amazon.Select product from search results
    Amazon.Add product to cart
    Amazon.Begin check out



