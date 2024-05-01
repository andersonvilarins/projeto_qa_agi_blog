*** Settings ***
Documentation       Arquivo responsável por armazenar as informações globais do ambiente

Library    SeleniumLibrary
Library    pyautogui

*** Variables ***
${url_base}            https://blogdoagi.com.br/
${pagina_inicial}      (//span[@class='menu-text'][contains(.,'O Agibank')])[1]

*** Keywords ***
Acessar o blog do Agibank
    Open Browser    ${url_base}    browser=chrome
    Maximize Browser Window
Verificar se estou na página inicial do blog
    Wait Until Element Is Visible    locator=${pagina_inicial}
    
Fechar o navegador
    Set Screenshot Directory    path=results
    Capture Page Screenshot
    Close Browser
