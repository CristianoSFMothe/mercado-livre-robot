*** Settings ***

Resource        ../resources/base.resource

Test Setup        Start Browser
Test Teardown     Finish Browser

*** Test Cases ***
CT01: Acessar a Página Ofertas do Dia
    [Documentation]    abrir a página inicial
    [Tags]             CT01

    Dado que estou na página inicial
    E clico no botão ofertas
    Quando entrar na página de ofertas
    Então devo visualizar as ofertas do dia




