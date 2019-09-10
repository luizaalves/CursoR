
#adc o fator sexo
gender <- factor(c("MALE","FEMALE","MALE"))

gender
#[1] MALE FAMALE MALE
#levels: FEMALE MALE

blood <- factor(c("O","AB","A"),
                levels = c("A", "B", "AB","O"))

blood
#[1] O AB O

symptoms <-factor(c("SEVERE", "MILD", "MODERATE"),
                  levels = c("MILD","MODERATE","SEVERE"),
                  ordered = TRUE) #ORDENAR SEMPRE USANDO O LEVEL

symptoms
#[1] SEVERE MILD MODERATE

symptoms > "MODERATE"
#[1] TRUE FALSE FALSE