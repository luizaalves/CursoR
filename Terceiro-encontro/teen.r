teens <- read.csv("snsdata.csv") #4 variaveis indicando caracteristicas pessoais e 36 palavras de interesse

table(teens$gender) #como está distribuido a questão masc. e feminino
#mulheres usam mais

table(teens$gender, useNA = "ifany") #adolescentes que não preencheram o genero

summary(teens$age) # medidas estatisticas das idades

teens$age <- ifelse(teens$age >= 13 & teens$age < 20, teens$age, NA) #idades fora desse intervalo, tratar como NA

summary(teens$age) # medidas estatisticas das idades

teens$female <- ifelse(teens$gender == "F" & !is.na(teens$gender), 1,0) #categorizar o genero se ele é ou não feminino; driblar os NAs
#se for feminino e não for NA ele vai ser 1

teens$no_gender <- ifelse(is.na(teens$gender),1,0) #se ele for NA vai pra essa categoria e oq sobrou vai pro masculino

teens$male <- ifelse(teens$gender == "M" & !is.na(teens$gender), 1,0) #se ele for masculino vai pra essa categoria e oq sobrou vai pro 0

table(teens$gender, useNA = "ifany")

table(teens$female, useNA = "ifany")

table(teens$no_gender, useNA = "ifany")

table(teens$male, useNA = "ifany")

ave_age <- ave(teens$age, teens$gradyear, FUN = function(x) mean(x, na.rm = TRUE)) 

teens$age <- ifelse(is.na(teens$age), ave_age, teens$age)#se a coluna da idade tiver na aplica a função acima

summary(teens$age)

interests <-teens[5:40] #deixa somente as variaveis numericas pega do intervalo 5 ao 40

interests_z <- as.data.frame(lapply(interests, scale)) #função z score faz uma normalização automatica
#coloca a media de todas as variaveis pra zero 

set.seed(2345)

teen_clusters <- kmeans(interests_z, 5)
