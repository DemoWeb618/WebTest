*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/Common.resource

*** Keywords ***
FutureSkill page should display homepage and display message as "${expected_text}"
    Common.Wait until element is ready then verify text    ${expected_text}