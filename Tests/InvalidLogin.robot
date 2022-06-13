*** Settings ***

Library  SeleniumLibrary
Resource  ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/HomePage.robot
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.robot

*** Variables ***
${site_url}  https://account.sb.forusall.com/login
${browser}  Chrome

*** Test Cases ***
Invalid Username Test

   open browser     ${site_url}  ${browser}
   set selenium implicit wait      10 seconds
   maximize browser window
   Input_Invalid_Username
   Input_Password
   Click_Login
   Error_Message
   sleep       5s
   close browser


Invalid Password Test
   open browser     ${site_url}  ${browser}
   set selenium implicit wait      10 seconds
   maximize browser window
   Input_Username
   Input_Invalid_Password
   Click_Login
   Error_Message
   sleep       5s
   close browser

Invalid Username and Password Test
   open browser     ${site_url}  ${browser}
   set selenium implicit wait      10 seconds
   maximize browser window
   Input_Invalid_Username
   Input_Invalid_Password
   Click_Login
   Error_Message
   sleep       5s
   close browser
*** Keywords ***