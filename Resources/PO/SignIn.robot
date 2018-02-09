*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PROCEED_LINK}     xpath=//*[@id="hlb-ptc-btn-native"]
${SIGNIN_TITLE}     Sign In
*** Keywords ***
User Must Signin
    Click Proceed to Check Out
    Verify Sign In Page has loaded


Click Proceed to Check Out
    Click link  ${PROCEED_LINK}

Verify Sign In Page has loaded
    Wait Until Page Contains  ${SIGNIN_TITLE}