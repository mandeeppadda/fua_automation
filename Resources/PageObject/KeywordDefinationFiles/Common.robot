*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Opening Browser
    [Arguments]     ${https://account.sb.forusall.com/login}        ${chrome}
    open browser        ${https://account.sb.forusall.com/login}        ${chrome}
    wait until element is visible       ${LoginUsernameInputBox}        timeout=5
