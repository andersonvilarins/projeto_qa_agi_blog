*** Settings ***

Documentation    
Library    SeleniumLibrary

*** Keywords ***
Validar página inicial do blog
    Log To Console              Validando a pagina incial do blog Agibank
    Wait Until Page Contains    O Agibank
    Set Screenshot Directory    path=results
    Capture Page Screenshot     validacaoTelaInicial.png
    Log To Console           ...Validação Concluída!
Validar a página após o resultado da consulta
    Log To Console               Validando a página de Resultados encontrados
    Wait Until Page Contains     Resultados encontrados para:
    Set Screenshot Directory     path=results
    Capture Page Screenshot      validacaoResultados.png
    Log To Console            ...Validação concluída!
Validar a página do primeiro artigo encotrado na busca
    Log To Console              Validando a página do artigo
    Wait Until Page Contains    O Agibank
    Set Screenshot Directory    path=results
    Capture Page Screenshot     validacaoArtigo.png
    Log To Console           ...Validação concluída!


