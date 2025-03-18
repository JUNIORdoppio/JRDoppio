*** Settings ***
Documentation     Template for Robot Framework Test Cases
Library           SeleniumLibrary
Library           OperatingSystem
Library           Collections
Library           BuiltIn
Library           YAMLLibrary
Variables         variables.yaml

*** Variables ***
${BROWSER}        Chrome
${BASE_URL}       https://google.com


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    //input[@name='username']

Verify Page Title
    [Arguments]    ${expected_title}
    Title Should Be    ${expected_title}

Perform Login
    [Arguments]    ${username}    ${password}
    Input Text    //input[@name='username']    ${username}
    Input Text    //input[@name='password']    ${password}
    Click Button    //button[@type='submit']
    Wait Until Page Contains    Dashboard

# Assignment 1: การส่ง Arguments แบบ Scalar
Validate Age
    [Arguments]    ${age}
    Run Keyword If    ${age} > 18    Log To Console    Eligible for voting
    ...    ELSE    Log To Console    Not eligible for voting

# Assignment 2: การส่ง Arguments แบบ List
Print Fruits
    [Arguments]    @{fruits}
    FOR    ${fruit}    IN    @{fruits}
        Log To Console    ${fruit}
    END

# Assignment 3: การส่ง Arguments แบบ Dictionary
Print User Info
    [Arguments]    &{user_info}
    Log To Console    Name: ${user_info["name"]}
    Log To Console    Age: ${user_info["age"]}
    Log To Console    City: ${user_info["city"]}

# Assignment 4: การใช้ Default Value ใน Arguments
Greet User
    [Arguments]    ${name}=Guest
    Log To Console    Hello, ${name}

# Assignment 5: Keyword ที่รับ Arguments ไม่จำกัดจำนวน (เป็น List)
Print All Items
    [Arguments]    @{items}
    FOR    ${item}    IN    @{items}
        Log To Console    ${item}
    END

# Assignment 6: การจัดการกับ Variables (Global vs Local)
Use Local Variable
    Set Local Variable    ${LOCAL_VAR}    Local Value
    Log To Console    Keyword: ${LOCAL_VAR}
    
    # Attempting to log the global variable inside the keyword
    Log To Console    Keyword: ${GLOBAL_VAR}









# Assignment 16: การสร้าง Recursive Keyword
Calculate Factorial
    [Arguments]    ${number}
    Run Keyword If    ${number} == 1    Return From Keyword    1
    ${previous}=    Calculate Factorial    ${number - 1}
    ${result}=    Evaluate    ${number} * ${previous}
    Return From Keyword    ${result}



*** Test Cases ***
# File: https://doppiotech0.sharepoint.com/sites/Automation/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FAutomation%2FShared%20Documents%2FGeneral%2FNew%5Fonboard%5F2023%2Fbasic%20robot%2Dframework%2FBasic%20robot%20assignment%2Emd&parent=%2Fsites%2FAutomation%2FShared%20Documents%2FGeneral%2FNew%5Fonboard%5F2023%2Fbasic%20robot%2Dframework&p=true&ga=1

# Assignment 1: การส่ง Arguments แบบ Scalar
Assignment 1: Scalar Arguments in Robot Framework. 
    [Documentation]    วัตถุประสงค์: เรียนรู้วิธีการส่งและใช้ค่า scalar argument ใน Robot Framework
    [Tags]
    Validate Age    16
    Validate Age    20

# Assignment 2: การส่ง Arguments แบบ List
Assignment 2: Test Print Fruits
    Print Fruits    apple    banana    cherry

# Assignment 3: การส่ง Arguments แบบ Dictionary
Assignment 3: Test Print Fruits
    Print User Info    name=John Doe    age=30    city=Bangkok

# Assignment 4: การใช้ Default Value ใน Arguments
Assignment 4.1:Test Greet User Without Name
    Greet User

Assignment 4.2:Test Greet User With Name
    Greet User    John

# Assignment 5: Keyword ที่รับ Arguments ไม่จำกัดจำนวน (เป็น List)
Assignment 5.1: Test Print All Items with 3 Items
    Print All Items    apple    banana    cherry

Assignment 5.2: Test Print All Items with 5 Items
    Print All Items    apple    banana    cherry    mango    grape

# Assignment 6: การจัดการกับ Variables (Global vs Local)
Assignment 6: Set Global Variable    ${GLOBAL_VAR}    Global Value
    Log To Console    Test Case: ${GLOBAL_VAR}
    
    Use Local Variable
    Log To Console    Test Case After Keyword: ${GLOBAL_VAR}

# Assignment 7: การดึงค่า Variables จากไฟล์ YAML
Test Load Variables from YAML
    Log To Console    Name: ${user["name"]}
    Log To Console    Age: ${user["age"]}
    Log To Console    City: ${user["city"]}

# Assignment 8: การ Preload Variables จากไฟล์ YAML ก่อนการทดสอบ




# Assignment 9: การ Return ค่ากลับเป็น Scalar




# Assignment 10: การ Return ค่ากลับเป็น List




# Assignment 11: การ Return ค่ากลับเป็น Dictionary



# Assignment 12: การใช้ If/If-Else Statement
Age Verification
    ${age}=    Set Variable    20
    Run Keyword If    ${age} > 18    Log To Console    You are an adult
    ...    ELSE IF    ${age} == 18    Log To Console    You just became an adult
    ...    ELSE    Log To Console    You are underage


# Assignment 13: การใช้ For Loop
Print Fruit List
    ${fruits}=    Create List    apple    banana    cherry
    FOR    ${fruit}    IN    @{fruits}
        Log To Console    ${fruit}
    END


# Assignment 14: การใช้ Break และ Continue ใน Loop




# Assignment 15: การจัดการข้อผิดพลาดด้วย Run Keyword And Return Status 
# และ Run Keyword And Ignore Error



# Assignment 16: การสร้าง Recursive Keyword
Test Factorial Calculation
    ${result}=    Calculate Factorial    5
    Should Be Equal    ${result}    120



# Assignment 17: การตั้งค่า Setup และ Teardown





# Assignment 18: การตั้งค่า Suite Setup และ Suite Teardown



# Assignment 19: การใช้ Teardown ใน Keyword, Test Case, และ Suite



# Assignment 20: การใช้งาน Tags ในการทดสอบ



# Assignment 21: การรัน Test Case โดยรวมเฉพาะบาง Tag



# Assignment 22: การรัน Test Case โดยยกเว้นบาง Tag



# Assignment 23: การใช้ Pabot Command ในการรัน Test Case แบบขนาน



# Assignment 24: การควบคุม Pabot Flow ด้วย -splittestlevel



# Assignment 25: การควบคุมจำนวน Threads ใน Pabot ด้วย -processes


