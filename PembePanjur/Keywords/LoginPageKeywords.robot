*** Settings ***
Library       SeleniumLibrary
Library       BuiltIn

*** Keywords ***
User goes to login page
    Run Keyword If  '${BROWSER}'=='chrome'
    ...    Run Keywords
    ...    Open Browser   ${URL}    ${BROWSER}
    ...    AND  Maximize Browser Window
    ...    AND  Set Window Size    1920    1080
    ...    AND  Set Browser Implicit Wait    2
    ...    AND  Delete All Cookies
    ...    ELSE IF  '${BROWSER}'=='headlesschrome'
    ...    Run Keywords
    ...    AND  Open Browser   ${TEST_URL}    ${BROWSER}
    ...    Start Virtual Display    1920    1080
    ...    AND  Set Browser Implicit Wait    2

User fills username textbox with "${InputUser}"
    Input Text    ${Email}    ${InputUser}

User fills password textbox with "${InputPassword}"
    Input Text    ${Password}    ${InputPassword}

User clicks login button
    Click Element    ${LoginButton}

User should see welcoming text
    Page Should Contain    Hoşgeldin
    Sleep    5

User should see "Hatalı şifre." text on page
    Page Should Contain    Hatalı şifre.
    Sleep    5

User should see "Böyle bir üye bulunamadı." text on page
    Page Should Contain    Böyle bir üye bulunamadı.
    Sleep    5

User should see "E-posta boş olamaz." text on page
    Page Should Contain    E-posta boş olamaz.
    Sleep    5
