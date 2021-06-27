*** Settings ***
Library       SeleniumLibrary
Library       BuiltIn

*** Variable ***
${URL}    https://www.pembepanjur.com/giris
${LoginButton}    xpath://*[@id="form1"]/div[4]/input
${Email}      xpath://*[@id="email"]
${Password}   xpath://*[@id="password"]
