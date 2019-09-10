subject_name <- c("John Doe","Jane Doe","Steve Graves")
temperature <- c(98.1, 98.6, 101.4)
flu_status <- c(FALSE, FALSE, FALSE)

#acessare o segundo elemento do vetor temperature
temperature[2]
#[1] 98.6

#acessar segundo e terceiro elemento
temperature[2:3]
#[1] 98.6 101.4

#excluir o item 2
temperature[-2]
#[1] 98.6 101.4

#pegar o primeiro elemento e o segundo do vetor temperatura
temperature[c(TRUE, TRUE, FALSE)]
#[1] 98.1 98.6

