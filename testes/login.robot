*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesso o site demoblaze.com.br
Test Teardown    Fechar o navegador

*** Test Cases ***

 Autenticação válida
    Dado que realizo autentição com dados válidos
    Então verifico a mensagem Welcome thiagoqa no menu