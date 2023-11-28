*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesso o site demoblaze.com.br
Test Teardown    Fechar o navegador

*** Test Cases ***

Validando adição de produto ao carrinho de compras
    Dado que adiciono um celular ao carrinho de compras    
    E adiciono um monitor ao carrinho de compras
    E adiciono um laptop ao carrinho de compras
    Então clico no link do carrinho de compras
    E atualizo a página
    E removo o monitor ao carrinho de compras
    Então verifico o valor total no carrinho de compras 