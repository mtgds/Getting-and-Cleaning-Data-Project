
#ACTIVIDAD 1

#Características y descripción de actividades
Features <- read.table(paste(sep = "", "C:/Users/One/Desktop/Coursera/Curso 3/Tarea 1", "/UCI HAR Dataset/features.txt"), col.names=c("n","funciones"))
Activity <- read.table(paste(sep = "", "C:/Users/One/Desktop/Coursera/Curso 3/Tarea 1", "/UCI HAR Dataset/activity_labels.txt"), col.names=c("c", "actividad"))

#Lectura archivos Train
subject_train <- read.table(paste(sep ="", "C:/Users/One/Desktop/Coursera/Curso 3/Tarea 1", "/UCI HAR Dataset/train/subject_train.txt"), col.names="Subject")
xtrain <- read.table(paste(sep ="", "C:/Users/One/Desktop/Coursera/Curso 3/Tarea 1", "/UCI HAR Dataset/train/x_train.txt"), col.names= Features$funciones)
ytrain <- read.table(paste(sep ="", "C:/Users/One/Desktop/Coursera/Curso 3/Tarea 1", "/UCI HAR Dataset/train/y_train.txt"), col.names = "código")

#Lectura archivos Test
subject_test <- read.table(paste(sep ="", "C:/Users/One/Desktop/Coursera/Curso 3/Tarea 1", "/UCI HAR Dataset/test/subject_test.txt"), col.names="Subject")
xtest <- read.table(paste(sep ="", "C:/Users/One/Desktop/Coursera/Curso 3/Tarea 1", "/UCI HAR Dataset/test/x_test.txt"), col.names= Features$funciones)
ytest <- read.table(paste(sep ="", "C:/Users/One/Desktop/Coursera/Curso 3/Tarea 1", "/UCI HAR Dataset/test/y_test.txt"), col.names = "código")

#Se unen las columnas de ambos conjuntos de datos para entrenamiento
Trainset <- cbind(subject_train, xtrain, ytrain)

#Se unen las columnas de ambos conjuntos de datos para testing
Testset  <- cbind(subject_test, xtest, ytest)

#Se unen los conjuntos de entrenamiento y prueba
Setdatos <- rbind(Trainset, Testset)


#ACTIVIDAD 2: selección de mean y std
Setdatosord <- Setdatos %>% select(Subject,código,contains("mean"), contains("std"))


#ACTIVIDADES 3 Y 4:

#Se asigna nombre a los códigos de cada una de de las actividades
Setdatosord$código<-Activity[Setdatosord$código,2]

#también se asigna nombre al conjunto de datos
names(Setdatosord)[2] = "actividad"
names(Setdatosord)<-gsub("Acc", "Accelerometer", names(Setdatosord))
names(Setdatosord)<-gsub("Gyro", "Gyroscope", names(Setdatosord))
names(Setdatosord)<-gsub("BodyBody", "Body", names(Setdatosord))
names(Setdatosord)<-gsub("Mag", "Magnitude", names(Setdatosord))
names(Setdatosord)<-gsub("^t", "Time", names(Setdatosord))
names(Setdatosord)<-gsub("^f", "Frequency", names(Setdatosord))
names(Setdatosord)<-gsub("tBody", "TimeBody", names(Setdatosord))
names(Setdatosord)<-gsub("-mean()", "Mean", names(Setdatosord), ignore.case = TRUE)
names(Setdatosord)<-gsub("-std()", "STD", names(Setdatosord), ignore.case = TRUE)
names(Setdatosord)<-gsub("-freq()", "Frequency", names(Setdatosord), ignore.case = TRUE)
names(Setdatosord)<-gsub("angle", "Angle", names(Setdatosord))
names(Setdatosord)<-gsub("gravity", "Gravity", names(Setdatosord))

View(Setdatosord)

#ACTIVIDAD 5: se obtiene el Set de Datos Final
SetDatosFinal <- aggregate( . ~ Subject + actividad, data = Setdatosord, FUN = mean )
SetDatosFinal <-SetDatosFinal[order(SetDatosFinal$Subject,SetDatosFinal$actividad),]
write.table(SetDatosFinal, file = "SetDatosFinal.txt",row.name=FALSE)
