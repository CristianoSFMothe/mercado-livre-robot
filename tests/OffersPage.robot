*** Settings ***

Resource        ../resources/base.resource

Test Setup        Start Browser
Test Teardown     Finish Browser

*** Test Cases ***
CT01: Acessar a página ofertas do dia
    [Documentation]    ofertas dia
    [Tags]             CT01

    Dado que estou na página inicial
    E clico no botão ofertas
    Quando entrar na página de ofertas
    E devo visualizar as ofertas do dia
    Então realiza o scroll na página para visualizar mais promoções

CT02: Visualizar produtos com entrega full
    [Documentation]    entrega full
    [Tags]             CT02

    Dado que estou na página inicial
    E clico no botão ofertas
    Quando entrar na página de ofertas
    E devo visualizar as ofertas do dia
    Então clicar no checkbox de full

CT02: Clicar no menu de ofertas relâmpago
    [Documentation]    Ofertas relâmpago
    [Tags]             CT03

    Dado que estou na página inicial
    E clico no botão ofertas
    Quando entrar na página de ofertas
    E devo visualizar as ofertas do dia
    Então clicar no menu ofertas relâmpago




