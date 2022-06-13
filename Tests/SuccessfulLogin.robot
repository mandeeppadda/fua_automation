*** Settings ***

Library  SeleniumLibrary
Resource  ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/HomePage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.robot

*** Variables ***
${site_url}  https://account.sb.forusall.com/login
${browser}  Chrome

*** Test Cases ***
Verify Successful Login to FUA

   open browser     ${site_url}  ${browser}
   set selenium implicit wait      10 seconds
   maximize browser window
   Input_Username
   Input_Password
   Click_Login
   sleep       5s
   Logout
   sleep       2s
   location should be       ${site_url}
   close browser

*** Keywords ***