*** Settings ***
Resource    ../main.robot

*** Variables ***
${LINK_SIGN_UP}              Sign up  
${MODAL_SIGN_UP}             id:signInModal  
${FIELD_USERNAME}            id:sign-username 
${FIELD_PASSWORD}            id:sign-password 
${BTN_SIGN_UP}               Sign up   
${SUCCESS_MSG}               Sign up successful. 
${USER_ALREADY_EXIST_MSG}    This user already exist.
${FIELD_WRONG_MSG}           Please fill out Username and Password. 
*** Keywords ***
Dado que eu clico no link Sign up
    Click Link    ${LINK_SIGN_UP}  
    Wait Until Element Is Visible  ${MODAL_SIGN_UP} 
E realizo cadastro       
    ${RANDOM_NAME}          FakerLibrary.First Name
    ${RANDOM_NUMBER}  Evaluate  random.randint(150, 9999999)
    Input Text    ${FIELD_USERNAME}     ${RANDOM_NAME} ${RANDOM_NUMBER} 
    Input Text    ${FIELD_PASSWORD}     teste1234
    Click Button    ${BTN_SIGN_UP}   

Então valido a mensagem de sucesso Sign up successful.
    Sleep    2s
    ${alert_text}    Handle Alert
    Should Be Equal As Strings     ${alert_text}     ${SUCCESS_MSG}

Quando preencho o campo usernam com usuário repetido
    Input Text    ${FIELD_USERNAME}     teste
    Input Text    ${FIELD_PASSWORD}     teste1234
    Click Button    ${BTN_SIGN_UP}  
     
Então valido a mensagem de erro This user already exist. 
    Sleep    2s
    ${alert_text}    Handle Alert   
    Should Be Equal As Strings     ${alert_text}     ${USER_ALREADY_EXIST_MSG}

Quando não preencho o campo username
    Input Text    ${FIELD_PASSWORD}     teste1234
    Click Button    ${BTN_SIGN_UP} 

Quando não preencho o campo password
    Input Text    ${FIELD_USERNAME}     teste
    Click Button    ${BTN_SIGN_UP}     

Quando que não preencho os campos 
    Click Button    ${BTN_SIGN_UP}     

Então valido a mensagem de erro Please fill out Username and Password.
    Sleep    2s
    ${alert_text}    Handle Alert   
    Should Be Equal As Strings     ${alert_text}     ${FIELD_WRONG_MSG}
