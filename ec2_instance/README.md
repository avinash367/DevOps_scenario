Usecase:By provisioning the docker and docker-compose using terrfaorm in aws cloud. i had a challange to run the docker-compose file having jenkins as Jcac and vault.

I had run using the docker-compose file as automation and had done it manually,which means once the ec2 instance is working than basting with ssh key and run the docker and docker-compose on that particular machine .

I had installed all the pre-requistes on the local machine and run it.

**Challenges**:

- Firstly my docker is not worked properly, beacuase of i have run the linux machine and give the ubuntu commands to install docker. so i overcome the error i had learn how to install  with out error.
- While using the docker-compose file, vault had a problem to run, beacause of i forgot to give the .hcl file.
- So knowing the all errors i came across to know the usage of terrraform locally.



----
By the same i had run the sonarqube for the testing process .once the docker is installed i had run the sonarqube image and tested the code by using the below commands

docker run -d -p 9000:9000 --name my sonarqube sonarqube:latest

once the container is running i went through the portal and see whether the engine is working or not, while checking the portal i had an error through ip_address. ihave pressed as Localhost:9000. But for the protal we need ip_address. so that i have used the following command as

curl ifconfig.me

-----

----German Version

Usecase: Durch die Bereitstellung der Docker und Docker-Compose mit terrfaorm in Aws Cloud. Ich hatte eine Herausforderung, um die Docker-Compose-Datei mit Jenkins als Jcac und Gewölbe laufen.

Ich hatte mit der Docker-Compose-Datei als Automatisierung laufen und hatte es manuell getan, was bedeutet, sobald die ec2-Instanz als Basting mit ssh-Schlüssel und führen Sie die Docker und Docker-Compose auf dieser bestimmten Maschine arbeitet.

Ich hatte alle pre-requistes auf der lokalen Maschine installiert und ausgeführt.

**Herausforderungen**:

- Erstens ist mein Docker nicht richtig funktioniert, beacuase von ich habe die Linux-Maschine laufen und geben Sie die Ubuntu-Befehle, um Docker zu installieren. so überwinden ich den Fehler hatte ich lernen, wie man mit out Fehler zu installieren.
- Während der Verwendung der Docker-Compose-Datei, hatte vault ein Problem zu laufen, beacause von ich vergessen, die .hcl-Datei zu geben.
- Da ich also alle Fehler kannte, kam ich dazu, die Verwendung von terrraform lokal zu kennen.



----
Sobald der Docker installiert ist, habe ich das Sonarqube-Image gestartet und den Code mit den folgenden Befehlen getestet

docker run -d -p 9000:9000 --name my sonarqube sonarqube:latest

Sobald der Container läuft, bin ich durch das Portal gegangen, um zu sehen, ob der Motor funktioniert oder nicht, beim Überprüfen des Portals hatte ich einen Fehler durch ip_address. ihave pressed as Localhost:9000. Aber für das Protal brauchen wir ip_address. so dass ich den folgenden Befehl verwendet habe als

curl ifconfig.me







