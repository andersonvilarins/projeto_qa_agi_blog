*** Settings ***
Documentation    Arquivo responsável por armazenar os elementos e variáveis da área de pesquisa do site

Resource    ../base.resource
Resource    ../validar_paginas/pagina_inicial.resource
Library    SeleniumLibrary
Library    pyautogui


*** Variables ***
${lupa_pesquisa}            (//div[contains(@class,'ast-search-menu-icon slide-search')])
${input_pesquisa}           //input[contains(@type,'search')]
${resultado_encontrado}     //section[contains(@class,'ast-archive-description')]
${primeiro_artigo}          (//div[contains(@class,'ast-post-format')])[1]
${final_do_artigo}          //div[contains(@class,'post-author-avatar')]    

*** Keywords ***
Acionar a lupa para realizar a pesquisa
    Validar página inicial do blog
    Click Element    locator=${lupa_pesquisa}
    builtin.Sleep    2
Inserir no campo a pesquisa desejada
    Input Text         locator=${input_pesquisa}    text=PIX
    pyautogui.Press    keys=enter
Aguardar o resultado da pesquisa
    Wait Until Element Is Visible    locator=${resultado_encontrado}
    builtin.Sleep    2  
    Validar a página após o resultado da consulta

Clicar no primeiro artigo da lista
    Click Element    locator=${primeiro_artigo}
    builtin.Sleep    2
    Validar a página do primeiro artigo encotrado na busca
Navegar até o final do artigo
    Scroll Element Into View    locator=${final_do_artigo}
    builtin.Sleep    2
    


