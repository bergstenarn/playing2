*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGNIN_HEADING}           css=#a-page > div.a-section.a-padding-medium.auth-workflow > div:nth-child(3) > div > div > form > div > div > div > h1
${SIGNIN_EMAIL_LABEL}       Email (phone for mobile accounts)

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${SIGNIN_HEADING}
    Wait Until Page Contains  ${SIGNIN_EMAIL_LABEL}
