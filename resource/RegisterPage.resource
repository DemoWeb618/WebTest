*** Settings ***
Library    SeleniumLibrary
Resource    ../resource/Common.resource
Variables    ../config/testdata.yaml

*** Keywords ***
User click register button and enter the information then click submit
    Common.Wait until element is ready then click element    //button[contains(text(), "สมัครสมาชิก")]
    Common.Wait until element is ready then input text    name=email    ${email}
    Common.Wait until element is ready then input text    name=firstName    ${firstName}
    Common.Wait until element is ready then input text    name=lastName    ${lastName}
    Common.Wait until element is ready then input text    name=phoneNumber    ${phoneNumber}    
    Common.Wait until element is ready then input text    name=newPassword    ${password}
    Common.Wait until element is ready then input text    name=confirmPassword    ${password}
    Common.Wait until element is ready then select checkbox    name=consent
    Common.Wait until element is ready then click element    //button[contains(text(), "สมัครสมาชิก")]   