*** Settings ***
Library            SeleniumLibrary
Test Setup         Open Browser        ${base_url}     ${base_type}   
Test Teardown      Close Browser

*** Variables ***
${base_url}     https://www.youtube.com/channel/UCg-GF1tOefIL_dPZdwTBv0g
${base_type}    gc

*** Test Cases ***
Membuka video di youtube
    Maximize Browser Window
    Input Text                          //input[@id="email"]  
    Input Text                          //input[@id="password"]       
    Click Element                       //button[@type="submit"]
    Element Should Be Visible           //img[@id="logo-icon"]

Memeriksa pada video youtube dojobox indonesia
    Maximize Browser Window
    Input Text                          //input[@id="email"]          
    Input Text                          //input[@id="password"]       
    Click Element                       //button[@type="submit"]
    Element Should Be Visible           //div[@class="tab-content style-scope tp-yt-paper-tab]"

Membuka video di youtube dojobox dengan kondisi internet terputus
    Maximize Browser Window
    Input Text                          //input[@id="email"]          
    Input Text                          //input[@id="password"]       
    Click Element                       //button[@type="submit"]
    Element Should Be Visible           //div[<@yt=-formatted-string]