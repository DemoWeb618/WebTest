*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}            https://www.google.com
${BROWSER_1}      Chrome
${SEARCH_TERM}    Robot Framework 

*** Test Cases ***
Test Google Search
    Open Browser To Google
    Search For A Term
    Verify Search Results
    [Teardown]    Close Browser

Test01
    Test Log to console
    
*** Keywords ***
Open Browser To Google
    Open Browser    ${URL}    ${BROWSER_1}
    Maximize Browser Window
    Wait Until Element Is Visible    name=q    10s

Test Log to console
    Log To Console    ${URL}

Search For A Term
    Input Text    name=q    ${SEARCH_TERM}
    Press Keys    name=q    ENTER
    Wait Until Page Contains Element    css=h3    10s

Verify Search Results
    Page Should Contain Element    css=h3
    ${result_count}=    Get Element Count    css=h3
    Should Be True    ${result_count} > 0    There should be search results