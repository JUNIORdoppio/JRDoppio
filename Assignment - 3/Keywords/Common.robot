***Settings***
Library                            SeleniumLibrary
Library                            OperatingSystem

*** Variables ***
${UAT}                             https://training-platform.doppio-tech.com
${SIT}                             https://doppee.doppio-tech.com

*** Keywords ***
Enter Doppee Website
    Open Browser                   url=${UAT}    browser=gc
    Maximize Browser Window
    Set Window Size                width=1920        height=1080

Home Page Display
    Title Should Be                title=Doppee

Clear all browser
    Close All Browsers



