*** Settings ***
Documentation  This is some basic info about the whole suite.
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/NavBar.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Loaded Page
    NavBar.Search Product
    Product.Results Load

Search For Products From Search Results
    SearchResults.Select Item

Add Product To Cart
    Cart.Add To Cart

Begin Checkout
    SignIn.User Must Signin
