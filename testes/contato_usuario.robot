*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesso o site demoblaze.com.br
Test Teardown    Fechar o navegador

*** Test Cases ***

Validando adição de mensagem de contato
    Dado que envio os dados de contato
    Então verifico a mensagem retorno de sucesso