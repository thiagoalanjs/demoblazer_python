## Projeto de automação de teste com Robot Framework e BDD ##
Projeto de testes de automacao do demoblaze.com com python usando Robot Framework

Esse repositório contém um projeto de automação de testes que roda 3 features no site https://www.demoblaze.com/, são elas:

1) "criacao_conta.feature" - testes realizados na sessão  'Sign Up' 
2) "carrinho_compras.feature" - testes na funcionalidade do carrinho de compras
3) "login.feature" - teste caminho feliz na tela de login.

### Instalação do ruby e dependências no Windows ###

Seguir o passo a passo nos tutoriais

[https://ftstblog.wordpress.com/2018/03/27/cucumber-configuracao-windows/](https://medium.com/@mayfernandes/season-tutoriais-ep-01-instalando-o-robot-framework-windows-aebf4477bcae)

OU também:

[https://papito.medium.com/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95](https://www.youtube.com/watch?v=pfNkxR26fr0)

Para mais informações veja a documentação - https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html


#### Executando o projeto ####
Apos instalação de Robot framework e suas dependências podemos executar esse projeto rodando o comando
```shell
robot testes/
```

#### Analisando o relatório de testes ####

Para ver o relatório de testes e checar os cenários que passaram ou não é só abrir o arquivo report.html:

![image](https://github.com/thiagoalanjs/demoblazer_python/assets/32438113/2b6fbe5e-9b96-41c6-812f-42d1b8022e27)



