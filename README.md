# Análise Exploratória de Dados - Projeto Final

![R](https://img.shields.io/badge/Linguagem-R-blue)
![License](https://img.shields.io/badge/Licença-MIT-green)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen)

---

## Índice

- [Objetivo](#objetivo)
- [Base de Dados](#base-de-dados)
- [Ferramentas e Bibliotecas](#ferramentas-e-bibliotecas)
- [Estrutura do Repositório](#estrutura-do-repositório)
- [Principais Etapas do Projeto](#principais-etapas-do-projeto)
- [Como Executar](#como-executar)
- [Captura de Tela do Dashboard](#captura-de-tela-do-dashboard)
- [Clonando o Repositório](#clonando-o-repositório)
- [Melhorias Futuras](#melhorias-futuras)
- [Autor](#autor)
- [Licença](#licença)

---

## Objetivo

Este projeto tem como objetivo aplicar os conhecimentos adquiridos na disciplina **Análise Exploratória de Dados**, utilizando ferramentas estatísticas e linguagem R para:

- Explorar e descrever uma base de dados real
- Identificar padrões, correlações e distribuições
- Tratar dados ausentes com técnicas de imputação
- Desenvolver um dashboard interativo com Shiny

---

## Base de Dados

A base utilizada foi **AcemogluGlobalData.csv**, contendo indicadores econômicos e sociais de diversos países. Foi escolhida por apresentar múltiplas variáveis numéricas e dados faltantes, características ideais para a aplicação das técnicas estudadas.

---

## Ferramentas e Bibliotecas

- `R` e `RStudio`
- `RMarkdown`
- `summarytools`
- `ggplot2`
- `ggpubr`
- `mice`
- `shiny`

---

## Estrutura do Repositório

| Arquivo                      | Descrição                                          |
|-----------------------------|----------------------------------------------------|
| `relatorio.Rmd`             | Código-fonte do relatório em RMarkdown             |
| `relatorio.pdf`             | Relatório final em PDF                             |
| `AcemogluGlobalData.csv`    | Base de dados utilizada                            |
| `app.R`                     | Código do dashboard interativo com Shiny           |
| `dashboard_shiny.png.png`   | Printscreen do dashboard em execução               |
| `README.md`                 | Documento explicativo do projeto                   |

---

## Principais Etapas do Projeto

1. **Escolha da base e justificativa**
2. **Estatísticas descritivas com `summarytools`**
3. **Matriz de dispersão com `GGally`**
4. **Estudo de normalidade:**
   - Histogramas (`ggplot2`)
   - Q-Q plots (`ggpubr`)
   - Teste de Shapiro-Wilk
5. **Discussão sobre distribuição normal**
6. **Análise de completude**
7. **Imputação com `mice`**
8. **Criação de dashboard interativo com `shiny`**

---

## Como Executar

### 1. Gerar o Relatório

Abra o `relatorio.Rmd` no RStudio e clique em **Knit** para gerar o `relatorio.pdf`.

### 2. Rodar o Dashboard

Execute o `app.R` com o seguinte comando:

```r
shiny::runApp("app.R")
