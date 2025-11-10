
#1. Pull the Spark Docker Image: First, obtain the official Apache Spark Docker image.
docker pull apache/spark:latest

#2. Start the Spark Master:
#Run a Docker container for the Spark master. Expose the necessary ports for the Spark UI (8080) and the master's communication port (7077).
docker run -d -p 8080:8080 -p 7077:7077 --name spark-master apache/spark:latest /opt/spark/bin/spark-class org.apache.spark.deploy.master.Master
#Confirm the Spark UI is running as expected: http://localhost:8080/
#Extract the IP of the  Spark Master from Spark UI 
# In my case at spark://172.17.0.2:7077 URL: spark://172.17.0.2:7077 (En caso de que tu master IP cambie actualizar en los comandos subsecuentes)

#3. Start 3 Spark Workers and add it to the cluster
#Run a Docker container for a Spark worker, linking it to the master. Replace spark-master with the actual name or IP of your Spark master container if it's different.
docker run -d --name spark-worker-1 --link spark-master:spark-master apache/spark:latest /opt/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://spark-master:7077 --cores 1 --memory 2g
docker run -d --name spark-worker-2 --link spark-master:spark-master apache/spark:latest /opt/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://spark-master:7077 --cores 1 --memory 2g
docker run -d --name spark-worker-3 --link spark-master:spark-master apache/spark:latest /opt/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://spark-master:7077 --cores 1 --memory 2g



#########################################################
######### Ejercicio 1 - Sin simulación de toleracia a fallos
#(Ejecutar este comando una sola vez) 
# Submit a Spark Application (Pi Montecarlo using 15k partitions):
docker exec spark-master /opt/spark/bin/spark-submit --class org.apache.spark.examples.SparkPi --master spark://172.17.0.2:7077 /opt/spark/examples/jars/spark-examples_2.13-4.0.1.jar 15000

#How Many random points will generate the previous Application to calculate the Pi?
# Crear su pdf de entrega de evidencias con la captura de la pantalla de la Spark UI después de haber ejecutado 1 vez la aplicación de Pi
# Crear una tabla con los resultados de Pi, error y tiempo de ejecución del cluster por cada ejecución (1)
#########################################################



#########################################################
######### Ejercicio 2 - Con simulación de toleracia a fallos
# Submit a Spark Application (Pi Montecarlo using 15k partitions):
docker exec spark-master /opt/spark/bin/spark-submit --class org.apache.spark.examples.SparkPi --master spark://172.17.0.2:7077 /opt/spark/examples/jars/spark-examples_2.13-4.0.1.jar 15000
#Esperar 20 a 30 segundos  antes de simular la falla abrupta de un nodo worker.

#Example command to stop and delete container (simulation of a fatal failure for a node)
### Force stop and remove the Container: docker rm -f <container_name>
docker rm -f spark-worker-2


# Crear su pdf de entrega de evidencias con la captura de la pantalla de la Spark UI después de haber ejecutado la aplicación de Pi.
# Crear una tabla con los resultados de Pi, error y tiempo de ejecución del cluster.
# Agregar la captura de pantalla del estado final de los nodos; desde la Spark UI: http://localhost:8080/

#########################################################


