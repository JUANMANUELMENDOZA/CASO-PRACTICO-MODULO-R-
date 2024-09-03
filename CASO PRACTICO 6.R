library(tidyverse)

df <- read.csv("Titanicv2.csv")

# Resumen

str(df)
summary(df)
head(df)


# Existen nulos? 

colSums(is.na(df))


# Selecciona las columnas ("PassengerId", "Survived", "Pclass", "Name", "Sex", 
# "Age","SibSp", "Parch", "Ticket", "Fare", "Cabin", "Embarked")
# Filtrar los (as) sobrevivientes
# Filtrar los (as) No sobrevivientes

df %>% 
   select(
     PassengerId, Survived, Pclass, Name, Sex, Age, SibSp, Parch, Ticket, Fare, 
     Cabin, Embarked) %>%
  filter(Survived == "Yes")
  
df %>% 
  select(
    PassengerId, Survived, Pclass, Name, Sex, Age, SibSp, Parch, Ticket, Fare, 
    Cabin, Embarked) %>%
  filter(Survived == "No")

# Filtrar por Sexo de los pasjeros

df %>% 
  select(Sex) %>% 
  arrange(Sex) %>%   
  filter(Sex == "male")

df %>% 
  select(Sex) %>% 
  arrange(Sex) %>%   
  filter(Sex == "female")


# Filtrar la edad máxima, mínima, media y mediana de mujeres y hombres

summarise(df,
          Promedio.Total.Edad = mean(Age, na.rm = TRUE))
          
summarise(df,
          Mediana.Edad = median(Age, na.rm = TRUE))

summarise(df,
          Maximo.Total.Edad = max(Age, na.rm = TRUE))

summarise(df,
          Minimo.Total.Edad = min(Age, na.rm = TRUE))

df %>% 
  select(Survived, Sex, Age) %>% 
  filter(Age >70) 

df %>% 
  select(Survived, Sex, Age) %>%
  filter(Age < 1)

# Filtrar por puerto de embarque

df %>% 
  select(Embarked) %>% 
  arrange(Embarked) %>%   
  filter(Embarked == "Cherbourg")

df %>% 
  select(Embarked) %>% 
  arrange(Embarked) %>%   
  filter(Embarked == "Queenstown")

df %>% 
  select(Embarked) %>% 
  arrange(Embarked) %>%   
  filter(Embarked == "Southampton")

# Filtrar nivel socioeconomico

df %>% 
  select(
    PassengerId, Survived, Pclass, Name, Sex, Age, SibSp, Parch, Ticket, Fare, 
    Cabin, Embarked)

df %>% 
  select(Pclass) %>% 
  arrange(Pclass) %>%   
  filter(Pclass == "Lower Clas")

df %>% 
  select(Pclass) %>% 
  arrange(Pclass) %>%   
  filter(Pclass == "Middle Class")

df %>% 
  select(Pclass) %>% 
  arrange(Pclass) %>%   
  filter(Pclass == "Upper Class")

# Filtrar total de Hermanos, Esposa, Padres e Hijos de pasageros

df %>% 
  select(SibSp, Parch) %>%
  filter(SibSp > 0)

df %>% 
  select(SibSp, Parch) %>%
  filter(Parch > 0)

# Venta total de tickets y filtrado por Nivel socioeconomico

summarise(df, Ventas.Total.Ticket = sum(Fare, na.rm =TRUE))


df %>% 
  select(Pclass, Fare) %>% 
  filter(Pclass == "Lower Clas")    


Ventas.Lowerclas <- summarise(
  filter(df, Pclass == "Lower Clas"), 
  Fare_L = sum(Fare, na.rm =TRUE))
head(Ventas.Lowerclas)

df %>% 
  select(Pclass, Fare) %>% 
  filter(Pclass == "Middle Class")    


Ventas.Middleclass <- summarise(
  filter(df, Pclass == "Middle Class"), 
  Fare_M = sum(Fare, na.rm =TRUE))
head(Ventas.Middleclass)

df %>% 
  select(Pclass, Fare) %>% 
  filter(Pclass == "Upper Class")    


Ventas.Upperclass <- summarise(
  filter(df, Pclass == "Upper Class"), 
  Fare_U = sum(Fare, na.rm =TRUE))
head(Ventas.Upperclass)


# Gráficas

df %>% 
  ggplot (aes(x=Pclass, fill = Survived))+
  geom_bar()

df %>% 
  ggplot (aes(x=Sex, fill = Survived))+
  geom_bar()

df %>% 
  ggplot (aes(x=Embarked, fill = Embarked))+
  geom_bar()

df %>% 
  ggplot(aes(x=Age, fill = Sex)) +
  geom_histogram(alpha=0.5)

df %>% 
  ggplot(aes(x=Fare, fill = Pclass)) +
  geom_histogram(alpha=0.5)

df %>% 
  ggplot(aes(x=Parch, fill = Survived)) +
  geom_histogram(alpha=0.5)

df %>% 
  ggplot(aes(x=SibSp, fill = Survived)) +
  geom_histogram(alpha=0.5)

df %>% 
  ggplot(aes(x=Embarked, y=Fare)) +
  geom_boxplot()

df %>% 
  ggplot(aes(x=Pclass, y=Fare, color=Embarked)) +
  geom_point(position="jitter")

df %>% 
  ggplot(aes(x=Fare, 
             y=Age,
             color=Survived,
             size=Fare)) +
  geom_point(alpha=0.5) 
  





