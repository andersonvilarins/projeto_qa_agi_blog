*** Settings ***
Documentation       Arquivo destinado à armazenar as informações globais dos testes

Library    Browser

*** Variables ***
${browser}     chromium
${headless}    ${true}
${url_base}            https://blogdoagi.com.br/
${pagina_inicial}      (//span[@class='menu-text'][contains(.,'O Agibank')])[1]

*** Keywords ***
Acessar o blog do Agibank
    New Browser    browser=${browser}    headless=${headless}
    
    New Context    viewport={'width': 1260, 'height': 652}
    New Page       url=${url_base}
    
