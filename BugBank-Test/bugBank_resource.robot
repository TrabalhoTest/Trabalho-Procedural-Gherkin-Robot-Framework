*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}    https://bugbank.netlify.app/

#REGISTAR
${REGISTRAR}    //button[normalize-space()='Registrar']
${COLOCAR_EMAIL_REGISTRAR}    //form[@class='styles__ContainerFormRegister-sc-7fhc7g-0 keVbpY']//input[@placeholder='Informe seu e-mail']
${COLOCAR_NOME_REFISTRAR}    //input[@placeholder='Informe seu Nome']
${COLOCAR_SENHA_REFISTRAR}    //div[@class='style__ContainerFieldInput-sc-s3e9ea-0 kOeYBn input__child']//input[@placeholder='Informe sua senha']
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
    #Capture Page Screenshot
    Close Browser

Acessar a página do BugBank
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${COLOCAR_EMAIL_LOGIN}
    Wait Until Element Is Visible    locator=${COLOCAR_SENHA_LOGIN}

Clicar em Registrar
    Click Element    locator=${REGISTRAR}

Preencher e-mail
    Click Element    locator=${COLOCAR_EMAIL_REGISTRAR}

#Preencher Nome

#Preencher Senha

#Preencher Confirmação de Senha

#Clicar em criar conta com saldo

#Clicar em Cadastrar

#Aguardar confirmação da criação da conta 
