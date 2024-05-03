*** Settings ***
Documentation       Arquivo responsável por armazenar as informações globais do ambiente

Library    Browser

*** Variables ***
${browser}     chromium
${headless}    ${true}
${url_base}            https://blogdoagi.com.br/
${pagina_inicial}      (//span[@class='menu-text'][contains(.,'O Agibank')])[1]

*** Keywords ***
Acessar o blog do Agibank
    New Browser    browser=${browser}
    ...            headless=${headless}
    
    New Context    viewport={'width': 1200, 'height': 900}
    New Page       url=${url_base}
    
