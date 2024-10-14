*** Settings ***
Library        SeleniumLibrary
Resource    ../resource/Common.resource
Resource    ../resource/HomePage.resource
Resource    ../resource/RegisterPage.resource
Resource    ../resource/OtpPage.resource
Variables    ../config/config.yaml
# Variables    ../config/testdata.yaml
Suite Setup    Open Browser    ${baseUrl}    chrome
Suite Teardown    Close Browser

*** Test Cases ***
As a user, I want to register FutureSkill
    [Setup]    Maximize Browser Window
    HomePage.FutureSkill page should display homepage and display message as "สมัครสมาชิก"
    RegisterPage.User click register button and enter the information then click submit
    OtpPage.After registeration, page display the OTP sending to phone message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    Sleep    2s