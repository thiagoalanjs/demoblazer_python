*** Settings ***
Resource    ../main.robot
*** Variables ***
${LINK_LOG_IN}                      Log in  
${MODAL}                            id:logInModal  
${FIELD_USERNAME_LOG_IN}            id:loginusername 
${FIELD_PASSWORD_LOG_IN}            id:loginpassword 
${BTN_LOG_IN}                       Log in   
${USER_NONEXISTENT_MSG}             User does not exist. 
${FIELD_WRONG_MSG}                  Please fill out Username and Password. 
${USER_LOGGED}                      id:nameofuser


*** Keywords ***
Dado que realizo autenticação com dados válidos
    Click Link    ${LINK_LOG_IN}  
    Wait Until Element Is Visible  ${MODAL}
    Input Text    ${FIELD_USERNAME_LOG_IN}     thiagoqa 
    Input Text    ${FIELD_PASSWORD_LOG_IN}     thiagoqa
    Click Button    ${BTN_LOG_IN}   
Então verifico a mensagem Welcome thiagoqa no menu
    Sleep    2s
    ${text_logged} =  Get Text  ${USER_LOGGED} 
    Should Be Equal    ${text_logged}    Welcome thiagoqa
    