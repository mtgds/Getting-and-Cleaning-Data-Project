

1) 

Features: caracter�sticas seleccionadas para esta base de datos provienen de las se�ales sin procesar de 3 ejes del aceler�metro y giroscopio.

Activity: lista de actividades realizadas cuando se tomaron las medidas correspondientes y sus respectivos c�digos. 


2) Objetos definidos dentro del c�digo,

subject_train: contiene datos de entrenamiento de voluntarios observados

xtrain: contiene datos de entrenamiento de caracter�sticas registradas

ytrain: contiene datos de entrenamiento de c�digo de actividades

subject_test: contiene datos de prueba de voluntarios que se est�n observando

xtest: contiene datos de prueba de caracter�sticas registradas

ytest: contiene datos de prueba de c�digo de actividades



3) Por otro lado, los diferentes nombres de variables contienen informaci�n sobre su significado: 

Gyro significa que la se�al se toma del giroscopio del tel�fono.

BodyBody significa que la se�al se basa en el cuerpo del sujeto.

Mag indica una medida de magnitud de una se�al.

^t al principio significa que es una medida basada en el tiempo.

^f al principio significa que es una medida basada en la frecuencia.

mean() indica que la medici�n es una media en el archivo de inicio.

std() indica que la medici�n es una desviaci�n est�ndar en los datos de origen.

gravity significa que la se�al se basa en la gravedad.



4) Finalmente se obtiene un conjunto de datos ordenados que es posible visualizar en el archivo
"SetDatosFinal.txt" 


