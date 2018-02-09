*** Settings ***
Documentation  These are some basic info about the whole suite.
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/CommonApp.robot

Suite Setup  CommonApp.Insert Testing Data
Test Setup  CommonApp.Begin Web Test
Test Teardown  CommonApp.End Web Test
Suite Teardown  CommonApp.Cleanup Inserted Data

*** Variables ***
${BROWSER}  chrome
${START_URL}  http://amazon.com
${SEARCH_TERM}  Ferrari 458

*** Test Cases ***
Logged out user should be able to search for products
    [Documentation]  These are some basic info about the test suite
    [Tags]  Smoke
    #  [Tags]  Current
    AmazonApp.Search For Products

Logged out user should be able to view the product
    [Documentation]  These are some basic info about the test suite
    #[Tags]  Smoke
    [Tags]  Current
    AmazonApp.Search For Products
    AmazonApp.Search For Products From Search Results

Logged out user should be able to add the product to cart
    [Documentation]  These are some basic info about the test suite
    [Tags]  Smoke
    AmazonApp.Search For Products
    AmazonApp.Search For Products From Search Results
    AmazonApp.Add Product To Cart

Logged out user must sign in to checkout
    [Documentation]  These are some basic info about the test suite
    [Tags]  Smoke
    AmazonApp.Search For Products
    AmazonApp.Search For Products From Search Results
    AmazonApp.Add Product To Cart
    AmazonApp.Begin Checkout


