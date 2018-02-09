*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FIRST_ITEM}       css=#result_0 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a
${ITEM_PAGE}        Back to search results
*** Keywords ***
Select Item
    [Documentation]  User must click the first item on the search result list.
    Click first item
    Verify Loaded Item Page

Click first item
    Click Link  ${FIRST_ITEM}

Verify Loaded Item Page
    Wait Until Page Contains  ${ITEM_PAGE}