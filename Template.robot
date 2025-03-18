*** Settings ***
Documentation     Template for Robot Framework Test Cases
Library           SeleniumLibrary
Library           OperatingSystem
Library           Collections

*** Variables ***
${BROWSER}        Chrome
${BASE_URL}       https://example.com
${API_URL}        https://api.example.com
${DB_NAME}        mydatabase
${DB_USER}        user
${DB_PASSWORD}    password
${DB_HOST}        localhost
${DB_PORT}        3306

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

Capture Page Screenshot
    Capture Page Screenshot    ${OUTPUT_DIR}/screenshot.png

Run API Test
    [Arguments]    ${endpoint}    ${method}    ${expected_status}
    ${response}    Request    ${method}    ${API_URL}${endpoint}
    Status Should Be    ${response}    ${expected_status}

Validate Database Entry
    [Arguments]    ${table}    ${column}    ${expected_value}
    Connect To Database    pymysql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
    ${result}    Query    SELECT ${column} FROM ${table} WHERE ${column}='${expected_value}';
    Should Contain    ${result}    ${expected_value}
    Disconnect From Database

*** Test Cases ***
Sample Test Case
    [Documentation]    Example test case using all essential commands.
    [Tags]             Smoke    Regression
    Open Browser To Login Page
    Verify Page Title    Expected Title
    Perform Login    username    password
    Capture Page Screenshot
    Run API Test    /endpoint    GET    expected_status=200
    Validate Database Entry    table_name    column_name    expected_value
    Log To Console    Test execution completed.
    Close Browser