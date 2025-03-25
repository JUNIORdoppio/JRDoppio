***Settings***
Resource                                  ../Keywords/import.robot
Test Teardown                             Close All Browsers



*** Test Cases ***

#หมายเหตุ ตอนนี้ Locator ยังไม่ถูกต้องนะครับ มีความสับสนอยู่ในเรื่องของ Xpath จะแก้ตัวนี้ตอน Full Version ทีเดียวค้าบ

TC01: Register Successfully 
    Enter Doppee Website
    #Sign Up
    Enter Register Page
    #Must not use already registered email
    #Automate the generation of email address?
    Input username for register           NewUsername=junior18@gmail.com
    Input password for register           NewPassword=Dopiok1@
    Input confirm password                ConfirmPassword=Dopiok1@
    Click Sign Up Button
    Register Successfully Popup
    #Enter to Home Page
    Input username for Login              Username=junior14@gmail.com
    Input password for Login              Password=Dopiok1@
    Login Successfully to home page
    Seach on Search Bar                   SearchText=phone

