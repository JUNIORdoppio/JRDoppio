***Settings***
Resource                                 ../Common.robot

*** Keywords ***
Enter Register Page
    Click Element                   locator=xpath://*[@id="app"]/section/header/ul/div/div[2]/div[2]/span
    Title Should Be                 title=Doppee    
    Page Should Contain             text=The best shopping experience
    Click Button                    locator=xpath://*[@id="app"]/section/div/div/form/div[4]/div/div/div/div/button
    Page Should Contain             text=Registration

Input username for register
    [Arguments]                     ${NewUsername}
    Input Text                      locator=id=basic_username    text=${NewUsername}

Input password for register
    [Arguments]                     ${NewPassword}
    Input Text                      locator=id=basic_password    text=${NewPassword}

Input confirm password
    [Arguments]                     ${ConfirmPassword}
    Input Text                      locator=id=basic_confirmPassword    text=${ConfirmPassword}

Click Sign Up Button
    Click Button                    locator=//*[@id="app"]/section/div/div/form/div[4]/div/div/div/div/button

Register Successfully Popup
    Wait Until Page Contains        Register successfully    timeout=5s
    Click Okay button
    Title Should Be                 Doppee  

Click Okay button 
    #Need to fix the locator
    Click Button                    locator=xpath=//*[@id="app"]/section/div/div/div[2]/button