# Análise Exploratória de Dados - Projeto Final

Este repositório contém o projeto final da disciplina **Análise Exploratória de Dados** do curso de Estatística para Cientistas de Dados. O objetivo foi aplicar os conhecimentos adquiridos sobre linguagem R, estatística descritiva e visualização de dados para realizar uma análise completa utilizando **RMarkdown**, com suporte visual em **ggplot2**, **summarytools**, **mice**, **ggpubr** e desenvolvimento de um **dashboard interativo em Shiny**.

---

## Objetivo

- Realizar uma análise descritiva detalhada de uma base de dados com múltiplas variáveis numéricas.
- Avaliar a distribuição dos dados, normalidade e qualidade.
- Tratar dados ausentes com técnicas de imputação.
- Criar um dashboard interativo com a biblioteca Shiny, permitindo visualização personalizada.

---

## Base de Dados

Utilizei a base **AcemogluGlobalData.csv**, que contém indicadores de diversos países relacionados a economia e desenvolvimento. A escolha se deu pelo número de variáveis numéricas disponíveis, pela presença de dados faltantes e pela relevância analítica desses dados.

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

| Arquivo | Descrição |
|--------|-----------|
| `relatorio.Rmd` | Código-fonte do relatório em RMarkdown |
| `relatorio.pdf` | Relatório final em formato PDF |
| `AcemogluGlobalData.csv` | Base de dados analisada |
| `app.R` | Código do dashboard interativo com Shiny |
| `dashboard_shiny.png.png` | Captura de tela do dashboard funcional |

---

## Principais Etapas do Projeto

1. **Escolha da Base e Justificativa**
2. **Análise Descritiva com summarytools**
3. **Matriz de Dispersão (Scatter Matrix Plot)**
4. **Estudo de Normalidade**
   - Histogramas
   - Gráficos Q-Q
   - Teste de Shapiro-Wilk
5. **Discussão sobre a Distribuição Normal**
6. **Análise de Qualidade dos Dados**
   - Definição e cálculo de completude
   - Imputação com MICE
7. **Criação do Dashboard Shiny**
   - Seleção da variável
   - Personalização de cores e eixos
   - Interatividade

---

## Como Executar

### 1. Relatório

Abra o arquivo `relatorio.Rmd` no RStudio e clique em **"Knit"** para gerar o PDF (`relatorio.pdf`).

### 2. Dashboard Shiny

Execute o arquivo `app.R` com o comando:

```r
shiny::runApp("app.R")
