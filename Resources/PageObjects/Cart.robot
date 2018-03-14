*** Settings ***
Library  Selenium2Library

*** Variables ***
${CART_PROCEED_TO_CHECKOUT_BUTTON}     id=hlb-ptc-btn-native

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Added to Cart

Press Checkout Button
    Click Link  ${CART_PROCEED_TO_CHECKOUT_BUTTON}
