*** Settings ***
Documentation    Arquivo responsável por armazenar os elementos e variáveis da área de pesquisa do site

Resource    ../base.resource
Resource    ../validar_paginas/pagina_inicial.resource



*** Variables ***
${lupa_pesquisa}            .icon-search:nth-child(2)
${input_pesquisa}           //input[contains(@type,'search')]
${resultado_encontrado}     //section[contains(@class,'ast-archive-description')]
${primeiro_artigo}          //*[@id="post-3105"]/div/div[1]    #(//div[contains(@class,'ast-post-format')])[1]
${final_do_artigo}          //div[contains(@class,'post-author-avatar')]    

*** Keywords ***
Acionar a lupa para realizar a pesquisa
    Validar página inicial do blog
    Get Element States    css=${lupa_pesquisa}  validate  visible
    Click                 css=${lupa_pesquisa}
       
Inserir no campo a pesquisa desejada
    Fill Text             xpath=${input_pesquisa}    txt=PIX
    Keyboard Key          press    Enter
    Sleep    4s
Clicar no primeiro artigo da lista
    Get Text    h1  ==    Resultados encontrados para: PIX 
    Validar a página do primeiro artigo encotrado na busca
    Click    xpath=${primeiro_artigo}
    
# Navegar até o final do artigo
#     Scroll To Element    id=${final_do_artigo}
    
    


