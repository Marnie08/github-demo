*** Settings ***
Documentation  This is a keyword file for Navigation bar
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${NAVBAR_SEARCHBOX}    id=twotabsearchtextbox
${NAVBAR_SEARCHBTN}    xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search Product
    Enter Search term
    Submit Search

Enter Search term
    Input Text  ${NAVBAR_SEARCHBOX}  ${SEARCH_TERM}

Submit Search
    Click Button  ${NAVBAR_SEARCHBTN}
