*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
    Go To  ${START PAGE}

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com
