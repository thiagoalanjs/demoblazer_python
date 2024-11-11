*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary    locale=pt_BR
Resource    shared/setup_teardown.robot
Resource    pages/cadastro_usuario_page.robot
Resource    pages/carrinho_compras_page.robot
Resource    pages/contato_usuario_page.robot
Resource    pages/login_page.robot