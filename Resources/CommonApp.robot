*** Settings ***
Documentation  This is some basic info about the whole suite.
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser

Insert Testing Data
    Log  Insert Testing Data

Cleanup Inserted Data
    Log  Cleanup Inserted Data
