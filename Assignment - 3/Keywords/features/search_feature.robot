***Settings***
Resource                                 ../Common.robot
Resource                                 ../import.robot

*** Keywords ***
Seach on Search Bar
    [Arguments]                           ${SearchText}
    Click Button                          locator=${Search_btn}
    Input Text                            locator=${Search_btn}    text=${SearchText}
    #Search Button
    Click Button                          locator=////*[@id="app"]/section/div/div[1]/span/span/span/button