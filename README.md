# CONTEXTO

Los temas más importantes vistos en las clases de R, fueron la manipulación y visualización de datos con Tidyverse. Porque en un principio lo que se espera de un analista o científico de datos, es que sea capaz de tomar cualquier conjunto de datos para manipularlo y visualizarlo a su gusto. Al final de este proceso es cuando se extrae la información más importante y luego se comparten los resultados con el resto de la organización.

## OBJETIVO

Realiza un análisis exploratorio en R, del conjunto de datos Titanic para comprender mejor qué características (por ejemplo, edad, nivel socioeconómico, costo de ticket, puerto de embarcación, etcétera) tienen los pasajeros que sobrevivieron o no sobrevivieron al evento. Una vez finalizado el análisis, en un documento pdf comparte un resumen no mayor a 2 párrafos con tus descubrimientos más importantes.

## Detalle de las columnas

1. PassangerId - Identificador único del pasajero.
2. Survived - Indicada si el pasajero sobrevivió o no (Yes, No).
3. Pclass - Nivel socioeconómico (Upper Class, Middle Class, Lower Class).
4. Name - Nombre del pasajero.
5. Sex - Género del pasajero.
6. Age - Edad del pasajero.
7. SibSp - Número total de herman@s y espos@s del pasajero.
8. Parch - Número total de padres e hijos del pasajero.
9. Ticket - Número de ticket del pasajero.
10. Fare - Costo del ticket.
11. Cabin - Número de cabina del pasajero (puede contener carácteres vacíos).
12. Embarked - Puerto de embarcación del pasajero.

## Pasos a seguir

1. Importa la base de datos Titanicv2.csv en R.
2. Realiza un análisis exploratorio de los datos con Tidyverse.
○ Esto incluye el uso de funciones select, filter, summarise, groupby con el operador pipe >%> para conseguir cuentas totales, promedios, medianas,
máximos o cualquier otra métrica que consideres pertinente.
○ Esto incluye el uso de visualizaciones como histogramas, diagramas de caja, diagramas de dispersión o más, para identificar patrones, grupos, o
tendencias.
○ Utiliza las columnas que tu consideres importantes. ¡No tienen que ser todas!
Confía en tu instinto - sean 2, 3 o todas las columnas las que analizaste... no afecta en tu calificación.
3. Guarda tu script de R, pues es parte de la evidencia del caso práctico.
4. Realiza un resumen no mayor a 2 párrafos con los descubrimientos más importantes en un archivo PDF.
5. Guardar el script de R con el código que utilizaste para explorar los datos, y el resumen en PDF. Por último sube ambos archivos en la plataforma de la Universidad de Colima.


## RESULTADOS

1. Con base a la exploración de la base de datos, a continuación se muestran los resultados obtenidos con las funciones  str, summary y colSums. Cabe mencionar que, datos básicos mostrados en summary, serán obtenidos con la programación del código más adelante.

![STR](https://github.com/user-attachments/assets/4914541c-86e8-4ed7-9b20-e60aa685bf2b)


![SUMMARY](https://github.com/user-attachments/assets/88533c47-2bdd-44ed-b7a7-278aa09fd3c6)


![COLSUMS](https://github.com/user-attachments/assets/4dc296bd-987d-41e1-b13f-af37a3fd719c)


2. Del análisis realizado podemoas concluir que,  en total abordaron 418 pasajeros en los siguientes puertos: Southampton = 270, Cherbourg = 102 y Queenstown = 46. Lo anterior se muestra en la siguiente gráfica de barras. Es importante señalar que, en una gráfica de barras adicional se muestra el nivel socioeconomico de los pasajeros con base a su alojamiento. Upperclass = 107,  Middleclass = 93 y Lowerclass = 218. En esta última gráfica tambien se muestran los sobrevivientes por cada nivel socioeconomico, destacando que fueron 152 (36% del total) sobrevivientes todas mujeres y 266 No sobrevivieron al accidente. Cabe mencionar que se desconoce datos de la tripulación.

![Captura de Pantalla 2024-09-02 a la(s) 10 04 05 p m](https://github.com/user-attachments/assets/6e4ce7a5-0223-4b02-bd45-05226d7d8b0b)


![Captura de Pantalla 2024-09-02 a la(s) 10 02 54 p m](https://github.com/user-attachments/assets/11415206-0dab-408b-b5b2-278176c1affe)



3. Asimismo, mediante el siguiente histograma se muestra como se distribuye la población de pasajeros con base a su edad. Podemos observar que en el rango de 18 a 45 años se concentra aproximadamente el 57% de los pasajeros. Es importante resaltar que, algunos pasajeros no indican la edad. Adicionalmente muestra la siguiente gráfica de barras que son 152 mujeres y 266 hombres.


![Captura de Pantalla 2024-09-02 a la(s) 10 04 35 p m](https://github.com/user-attachments/assets/ef3c0d2c-a01d-4b87-bc18-370588aca46b)

![Captura de Pantalla 2024-09-02 a la(s) 10 03 08 p m](https://github.com/user-attachments/assets/f4b9c0df-698a-4b39-8713-f29f3b5c45f5)


4. Mediante la siguiente gráfica histograma, se muestra el comportamiento de la tarifa y nivel socioeconomico. Curva sesgada a la derecha con datos concentrados a la izquierda (menor tarifa). Adicionalmente en una siguiente gráfica de dispersión se muestra el comportamiento de la tarifa, edad y supervivencia. Resalta que a menor tarifa se concentra el mayor número de sobrevivientes y no sobrevivientes, y tal como se ha mencionado la mayor concentración de pasajeros entre 18 y 45 años de edad.


![Captura de Pantalla 2024-09-02 a la(s) 10 04 52 p m](https://github.com/user-attachments/assets/20ed17ec-cb60-429f-813b-3d9bf270c24e)


![Captura de Pantalla 2024-09-02 a la(s) 10 06 53 p m](https://github.com/user-attachments/assets/ce9d4342-3781-46b4-916f-3d4ef271d67b)





