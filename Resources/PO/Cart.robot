*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CART_BUTTON}      id=add-to-cart-button
${CART_CONTENT}     Cart subtotal

*** Keywords ***
Add To Cart
    Clicking the Add to Cart Button
    Verify Cart Page

Clicking the Add to Cart Button
    Click Button  ${CART_BUTTON}

Verify Cart Page
    Wait Until Page Contains  ${CART_CONTENT}