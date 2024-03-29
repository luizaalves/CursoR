wbcd <- read.csv("wisc_bc_data.csv", stringsAsFactors = FALSE)

str(wbcd)

#tira a primeira coluna
wbcd <- wbcd[-1]

table(wbcd$diagnosis)

wbcd$diagnosis <- factor(wbcd$diagnosis, levels = c("B","M"),
                         labels = c("Benign","Malignant"))

round(prop.table(table(wbcd$diagnosis) )* 100, digits = 1)

summary(wbcd[c("radius_mean","area_mean","smoothness_mean")]) #medidas estatisticas

#normalizado para ficar de 0 a 1
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

normalize(c(1,2,3,4,5))
normalize(c(10,20,30,40,50))

#aplicar a função normalize em todas as listas do data frame e tirou a primeira que é o diagnostico
wbcd_n <- as.data.frame(lapply(wbcd[2:31], normalize))

summary(wbcd_n$area_mean) #teste para ver se se encontra entre 0 a 1

#separa a frequencia total em duas frequencias de treinamento e de teste
wbcd_train <- wbcd_n[1: 469, ]
wbcd_test <- wbcd_n[470:569, ]

#pega só a primeira coluna
wbcd_train_labels <- wbcd[1: 469,1]
wbcd_test_labels <- wbcd[470:569,1]

#algoritmo knn avaliar os vizinhos mais proximos para avaliar as proximas amostras

library(class)
wbcd_test_pred <- knn(train = wbcd_train,test = wbcd_test,
                     cl  = wbcd_train_labels, k=21)

library(gmodels)

CrossTable(x = wbcd_test_labels, y = wbcd_test_pred,
           prop.chisq = FALSE)
