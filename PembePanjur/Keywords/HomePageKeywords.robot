*** Settings ***
Library       SeleniumLibrary
Library       BuiltIn
Resource        ../Keywords/LoginPageKeywords.robot
Resource        ../Keywords/HomePageKeywords.robot

*** Keywords ***
User should see main titles on top
    Page Should Contain    Anasayfa
    Page Should Contain    Mesajlar
    Page Should Contain    Uygun Üyeler
    Page Should Contain    Favorileriniz
    Page Should Contain    Arama
    Page Should Contain    Hesap
    Sleep    5

User clicks to message button
    Click Element       ${MessageButton}
    Sleep    5
    Page Should Contain    GELEN MESAJLAR:

User clicks to read me button
    Click Element    ${ReadMeButton}
    Sleep    3

User should see send button
    Page Should Contain    Gönder
    Sleep    5

User clicks to home page button
    Click Element    ${HomePageButton}
    Sleep    5
    Page Should Contain    Profil Ziyaretleri

User clicks to favourite button
    Click Element    ${FavouriteButton}
    Sleep    5
    Page Should Contain    Hepsini Sil
