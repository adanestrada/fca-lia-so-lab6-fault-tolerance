# fca-lia-so-lab6-fault-tolerance

FCA LIA SO Lab 6 Sistemas operativos distribuidos - Tolerancia a Fallos


## Pre-requisitos
  - Tener instalado Docker
  - Acceso a internet


## Configuración.

Los pasos son los siguientes
1. Crear las carpetas y archivos requerido.  
2. Correr los comandos Docker en la terminal de Windows o Mac segun sea el caso.
3. Crear documento con evidencia de la simulación de tolerancia a fallos.


## 1 Crear las carpetas y los archivos requeridos
1. Crear las carpetas requeridas.  
    1. Crear la carpeta: C:\so-labs (ya existe de la práctica pasada)
    1. Crear la carpeta: C:\so-labs\lab6\
2. Copiar los archivos con el código del [Repositorio de GitHub](https://github.com/adanestrada/fca-lia-so-lab6-fault-tolerance)
1. Copiar los archivos a la carpeta: C:\so-labs\lab6\
    1. el archivo so_host_commands.sh
    
 
## 2. Correr los comandos Docker en la terminal

1. Abrir la aplicación de Docker (puede demorar algunos minutos, tener un poco de paciencia y no abrir dos veces, solo esperar a que se presente la pantalla de inicio).
1. Abrir la terminal para ingresar los comandos.
1. Abrir el archivo de apoyo: ```so_host_commands.sh```, de donde vamos a copiar y pegar los comandos en la terminal del sistema operativo anfitrión, es decir, Windows o Mac. 
```
      cd C:\so-labs\lab6
      docker pull apache/spark:latest
      ...
```
o Mac. 
```
      # Mac - Cambiar la ruta donde estén los archivos
      cd so-labs/lab6
      docker pull apache/spark:latest
      ...
```

1. Seguir el resto de las instrucciones en el archivo ```so_host_commands.sh```. 



## 3. Confirmar que se puede visualizar la página web
1. Crear un docuemnto pdf con las capturas de pantalla de cada salida de los comandos ejecutados del archivo de apoyo: ```so_host_commands.sh``` 
3. Agregar la captura de pantalla de la visualización de la página de Spark UI.
4. Agregar las respuestas a las preguntas del archivo: ```so_host_commands.sh```.



