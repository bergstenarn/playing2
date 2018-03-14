*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PageObjects/LandingPage.robot
Resource  ../Resources/PageObjects/TopNav.robot
Resource  ../Resources/PageObjects/SearchResult.robot
Resource  ../Resources/PageObjects/Product.robot
Resource  ../Resources/PageObjects/Cart.robot
Resource  ../Resources/PageObjects/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Enter Search Key
    TopNav.Press Search Button
    SearchResult.Verify Page Loaded

Select Product from Search Results
    SearchResult.Select Product
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add To Cart
    Cart.Verify Page Loaded

Begin Checkout
    Cart.Press Checkout Button
    SignIn.Verify Page Loaded
