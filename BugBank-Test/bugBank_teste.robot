*** Settings ***
Resource    bugBank_resource.robot

Suite Setup    Abrir o navegador
Suite Teardown    Fechar o navegador

*** Test Cases ***
Caso 01 - Cadastro de uma conta
    [Documentation]     Esse teste verifica o menu livros do site da Amazom e verifica a categoria o que todo mundo está lendo

    [Tags]    menus    categorias    smooke
    Acessar a página do BugBank
    Clicar em Registrar
    Preencher e-mail
    Preencher Nome
    Preencher Senha
    Preencher Confirmação de Senha
    Clicar em criar conta com saldo
    Clicar em Cadastrar
    Aguardar confirmação da criação da conta 

Caso 02 - Login com a conta criado
    Acessar a página do BugBank
    Informar o Email
    Informar a Senha
    Clicar em Acessar
    Aguardar página Home ser acessada
    Sair do sistema   