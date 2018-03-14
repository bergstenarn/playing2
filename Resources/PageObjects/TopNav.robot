*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOPNAV_SEARCH_BUTTON}     xpath=//*[@id="nav-search"]/form/div[2]/div/input
${TOPNAV_SEARCH_FIELD}      id=twotabsearchtextbox

*** Keywords ***
Enter Search Key
    Input Text  ${TOPNAV_SEARCH_FIELD}  ${SEARCH TERM}

Press Search Button
    Click Button  ${TOPNAV_SEARCH_BUTTON}
