wine <- read.csv("wine.csv",stringsAsFactors = TRUE)

str(wine)

summary(wine$Price)

summary(wine$Year)

summary(wine$AGST)

cor(wine)

ins_model <- lm(Price ~ Age*FrancePop + FrancePop*Year + WinterRain  + HarvestRain*Age + AGST, data = wine )

ins_model

summary(ins_model)
