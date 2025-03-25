***Settings***
Resource                                 ../Common.robot

*** Keywords ***
Display Login Page
    Click Element                       locator=xpath://*[@id="app"]/section/header/ul/div/div[2]/div[2]/span
    Title Should Be                     title=Doppee
    Page Should Contain                 text=The best shopping experience

Input username for Login
    [Arguments]                         ${Username}
    Input Text                          locator=class=ant-form-item-control-input-content   text=${Username}

Input password for Login
    [Arguments]                         ${Password}
    Input Text                          locator=xpath=//*[@id="app"]/section/div/div/form/div[2]/div/div[2]/div/div/span   text=${Password}

Click Log In Button
    Click Button                        locator=xpath=//*[@id="app"]/section/div/div/form/div[3]/div/div/div/div/button

Login Successfully Popup
    Wait Until Page Contains            text=Login Successfully    timeout=5s
    Click Button                        locator=xpath=/html/body/div[2]/div/div[2]/div/div[2]/div/div/div[2]/button

Click Okay button 
    #Need to fix the locator
    Click Button                    locator=xpath=//*[@id="app"]/section/div/div/div[2]/button