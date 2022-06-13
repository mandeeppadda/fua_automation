*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Logout
    wait until element is visible       ${LogoutButton}     timeout=5
    click element       ${LogoutButton}
    wait until element is visible       ${LoginUsernameInputBox}        timeout=5