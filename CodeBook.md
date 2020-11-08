

1) 

Features: características seleccionadas para esta base de datos provienen de las señales sin procesar de 3 ejes del acelerómetro y giroscopio.

Activity: lista de actividades realizadas cuando se tomaron las medidas correspondientes y sus respectivos códigos. 


2) Objetos definidos dentro del código,

subject_train: contiene datos de entrenamiento de voluntarios observados

xtrain: contiene datos de entrenamiento de características registradas

ytrain: contiene datos de entrenamiento de código de actividades

subject_test: contiene datos de prueba de voluntarios que se están observando

xtest: contiene datos de prueba de características registradas

ytest: contiene datos de prueba de código de actividades



3) Por otro lado, los diferentes nombres de variables contienen información sobre su significado: 

Gyro significa que la señal se toma del giroscopio del teléfono.

BodyBody significa que la señal se basa en el cuerpo del sujeto.

Mag indica una medida de magnitud de una señal.

^t al principio significa que es una medida basada en el tiempo.

^f al principio significa que es una medida basada en la frecuencia.

mean() indica que la medición es una media en el archivo de inicio.

std() indica que la medición es una desviación estándar en los datos de origen.

gravity significa que la señal se basa en la gravedad.



4) Finalmente se obtiene un conjunto de datos ordenados que es posible visualizar en el archivo
"SetDatosFinal.txt" 


