*** Settings ***
Library       SeleniumLibrary
Library       BuiltIn
Resource        ../Locator/LoginPageLocator.robot
Resource        ../Keywords/LoginPageKeywords.robot
Resource        ../Locator/HomePageLocator.robot
Resource        ../Keywords/HomePageKeywords.robot
Test Teardown      Close Browser

*** Test Cases ***
View to message folder
    User goes to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User clicks login button
    User should see main titles on top
    User clicks to message button
    User clicks to read me button
    User should see send button
