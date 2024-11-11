*** Settings ***
Resource    ../main.robot
*** Variables ***
${LINK_CONTACT}               Contact
${FIELD_CONTACT_EMAIL}        id:recipient-email
${FIELD_CONTACT_NAME}         id:recipient-name
${FIELD_CONTACT_TEXTAREA}     id:message-text
${SUCESS_CONTACT_MG}          Thanks for the message!!  
${MODAL_CONTACT}              id:exampleModal
${BTN_SEND_MSG}               Send message 
${TXT_EMAIL}                  test.com.br  


*** Keywords ***

Dado que envio os dados de contato
    Click Link  ${LINK_CONTACT}   
    Wait Until Element Is Visible  ${MODAL_CONTACT} 
    ${RANDOM_NAME}          FakerLibrary.First Name
    ${RANDOM_NUMBER}  Evaluate  random.randint(150, 9999999)
    Input Text    ${FIELD_CONTACT_EMAIL}     ${RANDOM_NAME}_${RANDOM_NUMBER}@${TXT_EMAIL} 
    Input Text    ${FIELD_CONTACT_NAME}     ${RANDOM_NAME}
    Input Text    ${FIELD_CONTACT_TEXTAREA}        Isso é um teste
    Click Button  ${BTN_SEND_MSG}

Então verifico a mensagem retorno de sucesso
    Sleep    2s
    ${alert_text}    Handle Alert
    Should Be Equal As Strings     ${alert_text}     ${SUCESS_CONTACT_MG}