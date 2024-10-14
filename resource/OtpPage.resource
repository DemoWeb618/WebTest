*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/Common.resource

*** Keywords ***
After registeration, page display the OTP sending to phone message as "${expected_text}"
    Common.Wait until element is ready then verify text    ${expected_text}