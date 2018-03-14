*** Settings ***
Library  Selenium2Library

*** Variables ***
${SEARCHRESULTS_FIRST_ITEM}     css=#result_0 a.s-access-detail-page

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  results for ${SEARCH TERM}

Select Product
    Click Link  ${SEARCHRESULTS_FIRST_ITEM}
