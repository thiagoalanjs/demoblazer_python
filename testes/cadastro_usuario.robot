*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesso o site demoblaze.com.br
Test Teardown    Fechar o navegador

*** Test Cases ***

Criação de cadastro com sucesso
    Dado que eu clico no link Sign up
    E realizo cadastro
    Então valido a mensagem de sucesso Sign up successful.

Criação de cadastro com usuário repetido
    Dado que eu clico no link Sign up
    Quando preencho o campo usernam com usuário repetido
    Então valido a mensagem de erro This user already exist.

Criação de cadastro com campo username vazio
    Dado que eu clico no link Sign up
    Quando não preencho o campo username
    Então valido a mensagem de erro Please fill out Username and Password.

Criação de cadastro com campo password vazio
    Dado que eu clico no link Sign up
    Quando não preencho o campo password
    Então valido a mensagem de erro Please fill out Username and Password.        

Criação de cadastro com os campos username e password vazios
    Dado que eu clico no link Sign up
    Quando que não preencho os campos
    Então valido a mensagem de erro Please fill out Username and Password.        