*** Settings ***
Documentation    Arquivo com os casos de testes que serão executados para realizar a pesquisa

Resource    ../resources/base.resource
Resource    ../resources/pages/pesquisa_artigos.resource

Test Setup        Acessar o blog do Agibank
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenario 01 - Realizar pesquisa de artigos relacionados ao PIX
    # Verificar se estou na página inicial do blog
    Acionar a lupa para realizar a pesquisa
    Inserir no campo a pesquisa desejada
    Aguardar o resultado da pesquisa
Cenário 02 - Acessar o primeiro artigo da lista de pesquisa
    # Verificar se estou na página inicial do blog
    Acionar a lupa para realizar a pesquisa
    Inserir no campo a pesquisa desejada
    Aguardar o resultado da pesquisa
    Clicar no primeiro artigo da lista
    Navegar até o final do artigo