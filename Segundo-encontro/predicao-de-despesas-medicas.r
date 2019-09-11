insurance <-read.csv("insurance.csv", stringsAsFactors = TRUE)

#variaveis vão impactar no valor das despesas medicas
str(insurance)

#ver o minimo e o máximo; 
summary(insurance$expenses)

#ver o histograma, nota-se que quanto maior os gastos, menos pessoas estão nesses dados
hist(insurance$expenses)

table(insurance$region)

table(insurance$sex)

table(insurance$smoker)

#faz uma matriz correlação entre essas variaveis
cor(insurance[c("age","bmi","children","expenses")])

#fazer o treinamento do modelo, lm = modelo lineares; cria uma relação entre gastos e essas variaveis ~. (pega todas as variaveis)

ins_model <- lm(expenses ~ age + children + bmi + sex + smoker + region, data = insurance)

#analisando o modelo
ins_model

#avaliando o desempenho do modelo
summary(ins_model)
#segunda parte, quanto cada variavel está impactando no resultado (quanto mais asteristico mais interfere no resultado)
