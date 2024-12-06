# Compilador Básico - Projeto de Aspectos Teóricos da Computação

Este projeto acadêmico foi desenvolvido para a disciplina de Aspectos Teóricos da Computação. O objetivo é criar um compilador básico com duas etapas principais: análise léxica e análise sintática, utilizando as ferramentas **JFlex** e **JCup**.

## Estrutura do Projeto

O compilador foi dividido nas seguintes etapas:

1. **Analisador Léxico**: Responsável por identificar e classificar os tokens no código-fonte (palavras-chave, identificadores, operadores, constantes, delimitadores, comentários, etc.).

2. **Analisador Sintático**: Verifica se o código está de acordo com a gramática especificada, ou seja, valida a estrutura do código.

3. **Integração e Execução**: Combina as duas etapas anteriores e realiza a execução do compilador de forma completa, processando o código fonte e exibindo os resultados.

## Requisitos

- **Java JDK** (versão 8 ou superior)
- **JFlex**: Ferramenta para geração de analisadores léxicos.
- **JavaCup**: Ferramenta para geração de analisadores sintáticos
- **Arquivo .bat**: Para facilitar a execução do compilador no ambiente Windows.

## Como Rodar o Compilador

### Passo 1: Preparar o código de entrada
Crie o código que deseja compilar e coloque-o no arquivo **input.txt**. Este arquivo deve estar na raiz do projeto. Certifique-se de que o código siga as regras léxicas definidas para o compilador.

### Passo 2: Executar o compilador
Abra o terminal no diretório do projeto e execute o script **run.bat** com o comando:

```bash
run.bat
