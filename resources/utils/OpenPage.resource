*** Settings ***

Resource        ../../resources/base.resource

*** Variables ***

${BASE_URL}        https://www.mercadolivre.com.br/
${BROWSER}         chromium
${IS_HEADLESS}     False

*** Keywords ***

Start Browser
    
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}
    New Page       ${BASE_URL}   

Finish Browser

    Take Screenshot        fullPage=true   