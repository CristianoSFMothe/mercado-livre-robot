*** Settings ***
Documentation        arquivo de keywords responsável por ações da página ofertas

Resource        ../base.resource

*** Keywords ***
Quando entrar na página de ofertas

    Wait For Elements State    ${offer.textOffer}    visible
    Get Text                   ${offer.textOffer}

E devo visualizar as ofertas do dia

    Wait For Elements State    ${offer.offerCoupon}    visible
    Get Text                   ${offer.offerCoupon}
    #  Scroll To Element          ${offer.linkPagination}

Então realiza o scroll na página para visualizar mais promoções    
    Scroll To     ${None}      600     0     smooth
    Wait For Elements State    ${offer.categoryText}    visible
    Get Text                   ${offer.categoryText}

Então clicar no checkbox de full

    Wait For Elements State    ${offer.fullDeliveryText}    visible
    Get Text                   ${offer.fullDeliveryText}   
    Click                      ${offer.fullDeliveryButton}          
    Check Checkbox             ${offer.fullDeliveryButton}          
    

Então clicar no menu ofertas relâmpago

    Wait For Elements State    ${offer.menuFlashDeals}    visible
    Get Text                   ${offer.menuFlashDeals}
    Click                      ${offer.menuFlashDeals}    