*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    5x    2s    input text    ${locator}    ${text} 

Wait until element is ready then verify text
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    2s    Page Should Contain    ${locator}

Wait until element is ready then select checkbox
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    2s    Select Checkbox    ${locator}    