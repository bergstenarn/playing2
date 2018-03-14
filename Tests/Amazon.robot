*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Resources1.robot
Resource  ../Resources/CommonResources.robot
Test Setup  CommonResources.Begin Web Test
Test Teardown  CommonResources.End Web Test
Library  Dialogs

*** Variables ***
${SEARCH TERM}  Ferrari 458
${START PAGE}  http://www.amazon.com
${BROWSER}  ie

*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie  firefox
    Set Global Variable  ${BROWSER}  ${new_browser}
    Resources1.Search for Products

User must sign in to check out
    [Documentation]  This is some basic info about the test
    Resources1.Search for Products
    Execute Manual Step  Do Something Manually!  It failed!
    Resources1.Select Product from Search Results
    Pause Execution
    Resources1.Add Product to Cart
    Resources1.Begin Checkout
