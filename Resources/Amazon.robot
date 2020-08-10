*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot

*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded

    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"

Select product from search results
    Click Link  css=#search > div.s-desktop-width-max.s-opposite-dir > div > div.sg-col-20-of-24.s-matching-dir.sg-col-28-of-32.sg-col-16-of-20.sg-col.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > span > div > div > div:nth-child(3) > h2 > a
    Wait Until Page Contains  Back to results

Add product to cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Sleep  3s

Begin check out
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  continue


