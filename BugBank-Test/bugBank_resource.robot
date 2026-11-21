*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}    https://bugbank.netlify.app/

#REGISTAR
${REGISTRAR}    //button[normalize-space()='Registrar']
${COLOCAR_EMAIL_REGISTRAR}    //form[@class='styles__ContainerFormRegister-sc-7fhc7g-0 keVbpY']//input[@placeholder='Informe seu e-mail']
${COLOCAR_NOME_REFISTRAR}    //input[@placeholder='Informe seu Nome']
${COLOCAR_SENHA_REFISTRAR}   //form[@class='styles__ContainerFormRegister-sc-7fhc7g-0 keVbpY']//input[@placeholder='Informe sua senha']
${COLOCAR_CONFIRMAR_SENHA_REFISTRAR}    //input[@placeholder='Informe a confirmação da senha']
${CRIAR_CONTA_COM_SALDO}    //label[@id='toggleAddBalance']
${CONFIRMAR_REGISTRAR}    //label[@id='toggleAddBalance']

#LOGIN
${COLOCAR_EMAIL_LOGIN}    //form[@class='style__ContainerFormLogin-sc-1wbjw6k-0 eTrcYr']//input[@placeholder='Informe seu e-mail']
${COLOCAR_SENHA_LOGIN}    //form[@class='style__ContainerFormLogin-sc-1wbjw6k-0 eTrcYr']//input[@placeholder='Informe sua senha']
${ACESSAR_CONTA}    //button[normalize-space()='Acessar']

#LOG OUT
${SAIR_CONTA}    //a[@id='btnExit']

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a página do BugBank
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${COLOCAR_EMAIL_LOGIN}
    Wait Until Element Is Visible    locator=${COLOCAR_SENHA_LOGIN}

Clicar em Registrar
    Click Element    locator=${REGISTRAR}

Preencher e-mail
    Click Element    locator=${COLOCAR_EMAIL_REGISTRAR}
    Input Text    locator=${COLOCAR_EMAIL_REGISTRAR}    text=teste@exemplo.com

Preencher Nome
    Click Element    locator=${COLOCAR_NOME_REFISTRAR}
    Input Text    locator=${COLOCAR_NOME_REFISTRAR}    text=Teste

Preencher Senha
    Click Element    locator=${COLOCAR_SENHA_REFISTRAR}
    Input Password    locator=${COLOCAR_SENHA_REFISTRAR}    password=123

Preencher Confirmação de Senha
    Wait Until Element Is Visible    locator=${COLOCAR_CONFIRMAR_SENHA_REFISTRAR}    timeout=3s   
    Click Element    locator=${COLOCAR_CONFIRMAR_SENHA_REFISTRAR}
    Input Password    locator=${COLOCAR_CONFIRMAR_SENHA_REFISTRAR}    password=123

Clicar em criar conta com saldo
    Click Element    locator=${CRIAR_CONTA_COM_SALDO}

Clicar em Cadastrar
    Click Element    locator=${CONFIRMAR_REGISTRAR}

Aguardar confirmação da criação da conta 
    Wait Until Element Is Visible    locator=${COLOCAR_EMAIL_LOGIN}

Informar o Email
    Click Element    locator=${COLOCAR_EMAIL_LOGIN}
    Input Text    locator=${COLOCAR_EMAIL_LOGIN}    text=teste@exemplo.com

Informar a Senha
    Click Element    locator=${COLOCAR_SENHA_LOGIN}
    Input Password    locator=${COLOCAR_SENHA_LOGIN}    password=123

Clicar em Acessar
    Click Element    locator=${ACESSAR_CONTA}

Aguardar página Home ser acessada
    Wait Until Element Is Visible    locator=${SAIR_CONTA} 

Sair do sistema
    Click Element    locator=${SAIR_CONTA}
