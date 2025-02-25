*** Settings ***
Documentation        arquivo de keywords responsável por ações da página inicial

Resource        ../base.resource

*** Keywords ***

Dado que estou na página inicial

    Wait For Elements State    ${home.linkRegistration}           visible

E clico no botão ofertas
    
    Wait For Elements State    ${home.linkOffers}   visible
    Click                      ${home.linkOffers} 
