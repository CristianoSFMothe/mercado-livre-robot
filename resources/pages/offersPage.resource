*** Settings ***
Documentation        arquivo de keywords responsável por ações da página inicial

Resource        ../base.resource

*** Keywords ***
Quando entrar na página de ofertas

    Wait For Elements State    ${offer.textOffer}

Então devo visualizar as ofertas do dia

     Wait For Elements State    ${offer.offerCoupon}

    

    

    