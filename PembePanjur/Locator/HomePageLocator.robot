*** Settings ***
Library       SeleniumLibrary
Library       BuiltIn

*** Variable ***
${MessageButton}    xpath://div[contains(text(),'Mesajlar')]
${ReadMeButton}     xpath://*[@id="content-to-be-blurred"]/div[2]/div[2]/div/div[2]/div/div/div[3]/div[3]/div/span
${HomePageButton}   xpath://div[contains(text(),'Anasayfa')]
${FavouriteButton}   xpath://a[contains(text(),'Favorileriniz:')]
