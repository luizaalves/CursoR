## Machine Learning with R ##

**Definições:**
Inteligência artificial, uma máquina que pensa.

Transformar um conjunto de dados em ações inteligentes.

**Primeiro encontro:**

https://www.dropbox.com/sh/yknvfn9702lp0ml/AACwATEE2kl08IFzJT7dydpza?dl=0

Programa: RStudio

Site sobre o R: r-project.org

packages: habilitar o class

No console: install.packages("neuralnet") -> biblioteca que trabalha com redes neurais

library(neuralnet)

?lm

**Estrutura de dados do R**

**Vetores:** Semelhante ao matlab/octave.

**Fatores:** Somente para representar variáveis categóricas e ordinais. (ex. quente, frio, chuvoso/ níveis de paciente)

**Matrizes:** Vetores do mesmo tipo

**Listas:** Permite armazenar elementos de diferentes tipos.(ex.: informação de um paciente)

**Data frame:** Lista de vetores ou fatores do mesmo tamanho.(vamos usar mais/ex. varios pacientes por linha e as colunas info do paciente que nem sempre são do mesmo tipo)

**Funções:** Rotinas com propósitos específicos.

leitura de arquivo csv separado por vírgulas 

Ex. de vetores, fatores, lista e data frame

more> set as work directory

**Segundo encontro:**

https://www.dropbox.com/sh/yknvfn9702lp0ml/AACwATEE2kl08IFzJT7dydpza?dl=0

    Regressão linear

**Terceiro encontro:**

https://www.dropbox.com/sh/b2ycqeg38eiap59/AACP-qQGncDSNL4floRuECcja?dl=0

Coletar dados de uma rede social, detectar semelhanças e analisá-la (Técnica clustering)

Dividir conjunto de dados e x grupos que tem semelhanças 

Temos que passar como entrada qual a semelhança que quer que ele divida

### Algoritmo K-Means ###

Inserir dois pontos de forma aleatória;

Começa a calcular a distancia entre os "centroides" de todos os pontos;

Vê qual está mais próximo e classifica, calcula uma média pra reposicionar a 'centroide' e faz novamente o calculo da distancia, reagrupa etc etc, até que nao tenha mais mudança nas bolinhas;

E assim tem-se os grupos definidos;

Resultado final tem uma dependencia do resultado inicial.

k-means utiliza a distância euclidiana

**Passos:**

1º passo: Coleta dados.

2º passo: Explorar e preparar dados.

3º passo: Treinar modelo.

4º passo: Analisar modelo.

### Técnica Naive Bayes ###

Pegar um conjunto de pequenas tomadas de decisões
Prob. de ocorrencia de cada palavra
Depois de combinar todas as probab. ele chega em um resultado

Mutuamente excludente (frequencia de ocorrencia de determinado evento)




