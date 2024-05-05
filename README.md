# projeto_qa_agi_blog
Projeto de Automação de Testes para o Blog do Agi  Este repositório contém um projeto de automação de testes desenvolvido, em robot framework, como parte do processo seletivo para uma vaga de QA Sênior. O objetivo é demonstrar a capacidade de criar testes automatizados para cenários em um ambiente de blog real.

## Configuração do Ambiente Virtual com `venv`

### Instalação e Configuração no Windows

1. Abra o terminal e instale o `venv` se ainda não estiver instalado:
    ```
    python -m pip install virtualenv
    ```
2. Navegue até o diretório do projeto e crie o ambiente virtual:
    ```
    python -m venv venv
    ```
3. Ative o ambiente virtual:
    ```
    venv\Scripts\activate
    ```

### Instalação e Configuração no Linux/Mac

1. Abra o terminal e instale o `venv` se ainda não estiver instalado:
    ```
    python3 -m pip install virtualenv
    ```
2. Navegue até o diretório do projeto e crie o ambiente virtual:
    ```
    python3 -m venv venv
    ```
3. Ative o ambiente virtual:
    ```
    source venv/bin/activate
    ```

### Benefícios do Uso de Ambiente Virtual

Utilizar um ambiente virtual como `venv` permite:

- **Isolamento:** Mantém as dependências do projeto separadas das bibliotecas globais do sistema.
- **Controle de versões:** Permite especificar e manter as versões exatas das bibliotecas necessárias.
- **Facilidade de replicação:** Facilita a criação de um ambiente de desenvolvimento consistente em diferentes máquinas.

## Ferramentas e Tecnologias Utilizadas

- **VSCode:** Editor de código utilizado para o desenvolvimento do projeto.
- **Robot Framework:** Framework de automação de testes.
- **Playwright:** Utilizado através da biblioteca "browser" para automatizar interações no navegador.

## Estrutura de Diretórios

O projeto está organizado nos seguintes diretórios:

- `resources/`
    - `pages/`: Contém variáveis e keywords para partes específicas de cada cenário de teste.
    - `validar_paginas/`: Armazena screenshots das páginas durante a execução dos testes.
	
- `tests/`: Contém o arquivo .robot que irá realizar a execução dos testes.

## Integração Contínua (CI) com GitHub Actions

O arquivo `.yaml` configurado para a pipeline do GitHub Actions automatiza a execução dos testes e outras verificações a cada push ou pull request, garantindo que todas as alterações estejam de acordo com os padrões de qualidade esperados.

Este README.md serve como um guia inicial para todos que desejam contribuir ou entender melhor o projeto.
