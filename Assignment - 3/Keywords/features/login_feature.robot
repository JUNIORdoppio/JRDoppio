***Settings***
Resource                                  ../Common.robot
Resource                                  ../import.robot 


*** Keywords ***
Enter the Doppee Website & Go to Login Page 
    Enter Doppee Website
    Home Page Display
    Display Login Page

Login Successfully to home page
    Click Log In Button
    Login Successfully Popup
    Home Page Display