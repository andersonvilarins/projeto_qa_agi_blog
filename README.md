# projeto_qa_agi_blog
Projeto de Automação de Testes para o Blog do Agi  Este repositório contém um projeto de automação de testes desenvolvido, em robot framework, como parte do processo seletivo para uma vaga de QA Sênior. O objetivo é demonstrar a capacidade de criar testes automatizados para realizar pesquisas dentro do blog.
![image](https://github.com/andersonvilarins/projeto_qa_agi_blog/assets/972596/10cb53c3-fe82-4817-bb6d-9d031e0592d6)


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
-  <img align= "center" height="30" width="40" src=https://www.svgrepo.com/show/374049/robotframework.svg /> **Robot Framework:** Framework de automação de testes.
- <img align= "center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/playwright/playwright-original.svg" />**Playwright:** Utilizado através da biblioteca "browser" para automatizar interações no navegador.
  
## Instalação de Bibliotecas e dependências do Projeto
Para instalar as dependências necessárias para o projeto, você precisará seguir os passos abaixo. Certifique-se de que o ambiente virtual está ativado antes de prosseguir com a instalação das bibliotecas.
* Instalação das Dependências:
Com o ambiente virtual ativado, utilize o seguinte comando para instalar todas as bibliotecas listadas no arquivo requirements.txt:
```
    pip install -r requirements.txt
```
## Verificação da Instalação
* Após a instalação das bibliotecas e dependências do projeto, verifique se tudo foi instaldo corretamente no seu ambiente com o seguinte comando:
  ```
    pip list
  ```
Este comando mostrará todas as bibliotecas instaladas junto com suas respectivas versões, permitindo que você confira se todas as dependências necessárias estão corretamente instaladas.
Seguir estes passos garantirá que o ambiente de desenvolvimento esteja configurado corretamente e pronto para a execução e desenvolvimento do projeto.

## Estrutura de Diretórios

O projeto está organizado nos seguintes diretórios:

- `resources/`
    - `pages/`: Contém variáveis e keywords para partes específicas de cada cenário de teste.
    - `validar_paginas/`: Armazena screenshots das páginas durante a execução dos testes.
	
- `tests/`: Contém o arquivo .robot que irá realizar a execução dos testes.

## Cenários de testes
* Realizar pesquisa de artigos relacionados a um tema específico
* Acessar o primeiro artigo da lista de pesquisa

## Integração Contínua (CI) com GitHub Actions <img align= "center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/githubactions/githubactions-original.svg" />

O arquivo `.yaml` configurado para a pipeline do GitHub Actions automatiza a execução dos testes e outras verificações a cada push ou pull request, garantindo que todas as alterações estejam de acordo com os padrões de qualidade esperados.

Este README.md serve como um guia inicial para todos que desejam contribuir ou entender melhor o projeto.
