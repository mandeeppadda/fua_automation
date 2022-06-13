*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Input_Username
    input text      ${LoginUsernameInputBox}        ${Username}

Input_Password
    input text      ${LoginPasswordInputBox}        ${Password}

Input_Invalid_Username
    input text      ${LoginUsernameInputBox}        ${invalidUsername}

Input_Invalid_Password
    input text     ${LoginPasswordInputBox}         ${invalidPassword}

Error_Message
    element text should be      ${ErrorMessage}     Invalid Credentials.

Click_Login
    click element       ${LoginButton}


