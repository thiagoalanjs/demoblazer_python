### Projeto de automação com Robot Framework ###

Projeto de testes de automacao do demoblaze.com com python usando Robot Framework

Esse repositório contém um projeto de automação de testes que roda 3 features no site https://www.demoblaze.com/, são elas:

1) "criacao_conta.robot" - testes realizados na sessão  'Sign Up' 
2) "carrinho_compras.robot" - testes na funcionalidade do carrinho de compras
3) "login.robot" - teste caminho feliz na tela de login.


### Instalação do Robot Framework ###

Siga o passo a passo - https://medium.com/lusitanos-qa/instala%C3%A7%C3%A3o-do-ambiente-para-utilizar-o-robot-framework-em-aplica%C3%A7%C3%B5es-web-34a141b9bf44 

Para esse projeto também devemos instalar as bibliotecas **RequestsLibrary**, **Fakers** e **Selenium**, você pode fazer criando um ambiente virtual 'venv":

```shell

# Criando um ambiente virtual
python3 -m venv automacao

# Ativando o ambiente virtual
source automacao/bin/activate

# Instalando pacotes
pip install setuptools

pip install robotframework-requests

pip install robotframework-seleniumlibrary

pip install robotframework-faker

# Salvando as dependências no ambiente criado
pip freeze > requirements.txt

# Após os testes rode o comando para sair do ambiente virtual
deactivate

# Reinstalação dependências na criação de novo ambiente
pip install -r requirements.txt
```

#### Executando o projeto ####
Apos instalação de Robot framework e suas dependências podemos executar esse projeto rodando o comando
```shell
robot testes/
```

#### Analisando o relatório de testes ####

Para ver o relatório de testes e checar os cenários que passaram ou não é só abrir o arquivo report.html:

![image](https://github.com/thiagoalanjs/demoblazer_python/assets/32438113/2b6fbe5e-9b96-41c6-812f-42d1b8022e27)



