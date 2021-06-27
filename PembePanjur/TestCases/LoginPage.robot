*** Settings ***
Library       SeleniumLibrary
Library       BuiltIn
Resource        ../Locator/LoginPageLocator.robot
Resource        ../Keywords/LoginPageKeywords.robot
Test Teardown      Close Browser

*** Test Cases ***
Successfully login with correct username and password
    User goes to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "Testotomasyon"
    User clicks login button
    User should see welcoming text

Login with correct username and incorrect password
    User goes to login page
    User fills username textbox with "sinanulug@outlook.com"
    User fills password textbox with "yanlışşifre"
    User clicks login button
    User should see "Hatalı şifre." text on page

Login with non-registered user
    User goes to login page
    User fills username textbox with "sinan.ulug@outlook.com"
    User fills password textbox with "sifre123"
    User clicks login button
    User should see "Böyle bir üye bulunamadı." text on page

Login with null username and null password
    User goes to login page
    User fills username textbox with ""
    User fills password textbox with ""
    User clicks login button
    User should see "E-posta boş olamaz." text on page
