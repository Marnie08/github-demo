*** Settings ***
Documentation  This is a keyword file for landing page
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${HOME_CONTENT}    Your Amazon.com

*** Keywords ***
Load
    Load the page

Verify Loaded Page
    Verify Home Page Content

Load the page
    Go To  ${START_URL}

Verify Home Page Content
    Wait Until Page Contains  ${HOME_CONTENT}