*** Settings ***
Library    SeleniumLibrary
Resource    ../main.robot

*** Variables ***
${BROWSER}                Chrome
${URL}                    https://www.demoblaze.com/

*** Keywords ***

Dado que acesso o site demoblaze.com.br
    Open Browser  url=${URL}    browser=${BROWSER}
    Maximize Browser Window
Fechar o navegador
    Close Browser    