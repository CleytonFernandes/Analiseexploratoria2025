library(shiny)
library(ggplot2)

# Carregar os dados
dados <- read.csv("C:/Users/cleyt/OneDrive/Área de Trabalho/MBA em Data Science INFNET/Análise exploratória de dados/Projeto da Disciplina/AcemogluGlobalData.csv", 
                  sep = ";", dec = ",", stringsAsFactors = FALSE, encoding = "UTF-8")

# Converter colunas para numérico
dados$dem_ind <- as.numeric(as.character(dados$dem_ind))
dados$log_gdppc <- as.numeric(as.character(dados$log_gdppc))
dados$log_pop <- as.numeric(as.character(dados$log_pop))
dados$age_median <- as.numeric(as.character(dados$age_median))

# Renomear as variáveis
names(dados) <- c("País", "Ano", "Índice de Democracia", "Log do PIB per Capita", "Log da População", 
                  "Proporção Idade 0-14", "Proporção Idade 15-29", "Proporção Idade 30-44", 
                  "Proporção Idade 45-59", "Proporção Idade 60+", "Nível de Educação", 
                  "Idade Mediana", "Código do País")

# Selecionar apenas colunas numéricas
dados_numericos <- dados[, c("Índice de Democracia", "Log do PIB per Capita", "Log da População", 
                             "Proporção Idade 0-14", "Proporção Idade 15-29", "Proporção Idade 30-44", 
                             "Proporção Idade 45-59", "Proporção Idade 60+", "Nível de Educação", 
                             "Idade Mediana")]

# Interface do usuário (UI)
ui <- fluidPage(
  titlePanel("Dashboard Interativo - AcemogluGlobalData"),
  sidebarLayout(
    sidebarPanel(
      # Seletor de variável
      selectInput("variavel", "Selecione a Variável:", 
                  choices = names(dados_numericos), selected = "Índice de Democracia"),
      # Seletor de cor
      selectInput("cor", "Selecione a Cor da Linha:", 
                  choices = c("Azul" = "blue", "Vermelho" = "red", "Verde" = "green"), 
                  selected = "blue"),
      # Limites do eixo X
      numericInput("x_min", "Limite Inferior do Eixo X:", value = 0),
      numericInput("x_max", "Limite Superior do Eixo X:", value = 100),
      # Limites do eixo Y
      numericInput("y_min", "Limite Inferior do Eixo Y:", value = -1),
      numericInput("y_max", "Limite Superior do Eixo Y:", value = 2)
    ),
    mainPanel(
      plotOutput("grafico")
    )
  )
)

# Lógica do servidor (Server)
server <- function(input, output) {
  output$grafico <- renderPlot({
    # Criar um gráfico de linha com a variável selecionada
    ggplot(dados, aes(x = Ano, y = .data[[input$variavel]])) +
      geom_line(color = input$cor) +
      labs(title = paste("Gráfico de", input$variavel, "ao Longo do Tempo"),
           x = "Ano", y = input$variavel) +
      coord_cartesian(xlim = c(input$x_min, input$x_max), 
                      ylim = c(input$y_min, input$y_max))
  })
}
# Rodar o aplicativo
shinyApp(ui = ui, server = server)
