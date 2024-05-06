*** Settings ***
Documentation    Arquivo destinado à armazenar os elementos e variáveis da área de pesquisa do site

Resource    ../base.resource
Resource    ../validar_paginas/screenshots.resource



*** Variables ***
${lupa_pesquisa}            .icon-search:nth-child(2)
${input_pesquisa}           //input[contains(@type,'search')]
${resultado_encontrado}     //section[contains(@class,'ast-archive-description')]
${primeiro_artigo}          //*[@id="post-3105"]/div/div[1]    
${final_do_artigo}          //div[contains(@class,'post-author-avatar')]    

*** Keywords ***
Acionar a lupa para realizar a pesquisa
    Validar página inicial do blog
    Get Element States    css=${lupa_pesquisa}  validate  visible
    Click                 css=${lupa_pesquisa}
       
Inserir no campo a pesquisa desejada
    Fill Text             xpath=${input_pesquisa}    txt=PIX
    Keyboard Key          press    Enter
    Sleep    3s
    Validar a página após o resultado da consulta
Clicar no primeiro artigo da lista
    Get Text    h1  ==    Resultados encontrados para: PIX 
    Click    xpath=${primeiro_artigo}
    Sleep    3s
    Validar a página do primeiro artigo encotrado na busca
    
    
    


