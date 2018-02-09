*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Results load
        Wait Until Page Contains  results for "${SEARCH_TERM}"