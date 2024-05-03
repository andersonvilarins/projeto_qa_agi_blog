*** Settings ***
Documentation    Arquivo com os casos de testes que serão executados para realizar a pesquisa

Resource    ../resources/base.resource
Resource    ../resources/pages/pesquisa_artigos.resource

Suite Teardown    Close Browser    ALL

*** Test Cases ***
Cenario 01 - Realizar pesquisa de artigos relacionados ao PIX
    Acessar o blog do Agibank
    Acionar a lupa para realizar a pesquisa
    Inserir no campo a pesquisa desejada
Cenário 02 - Acessar o primeiro artigo da lista de pesquisa
    Acessar o blog do Agibank
    Acionar a lupa para realizar a pesquisa
    Inserir no campo a pesquisa desejada
    Clicar no primeiro artigo da lista
    # Navegar até o final do artigo