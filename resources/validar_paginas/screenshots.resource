*** Settings ***

Documentation    Arquivo destinado à capturar as telas do site
Library    Browser

*** Keywords ***
Validar página inicial do blog
    Log To Console    Validando a pagina incial do blog Agibank
    Take Screenshot    telaInicial    
    Log To Console    ...Validação Concluída!
Validar a página após o resultado da consulta
    Log To Console    Validando a página de Resultados encontrados
    Take Screenshot   resultadoConsulta
    Log To Console    ...Validação concluída!
Validar a página do primeiro artigo encotrado na busca
    Log To Console     Validando a página do artigo
    Take Screenshot    primeiroArtigo
    Log To Console     ...Validação concluída!


