*** Settings ***
Resource    amazon_resource.robot

Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Livros"
    [Documentation]     Esse teste verifica o menu livros do site da Amazom e verifica a categoria o que todo mundo está lendo

    [Tags]    menus    categorias    smooke
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Livros"
    Verificar se o título da página fica "Amazon.com.br: Livros"
    Verificar se aparece a frase "O que todo mundo está lendo"

*** Test Cases ***
caso de teste 02 - Acesso ao menu "livros" em Gherkin
    [Documentation]     Esse teste verifica o menu livros do site da Amazon.com.br e verifica o que todo mundo esta lendo 

    [Tags]    menus    categorias    smooke
    Dado que estou na home page do site Amazon.com.br
    Quando acessar o menu "Livros"
    Então o título da página deve ficar "Amazon.com.br: Livros"
    E o texto "O que todo mundo está lendo" deve ser exibido na pagina