**Docker-compose file using jenkins and vault**

Steps run docker-compose file

1. Write a yaml file which includes two images such as jenkins and vault.

2. jenkins will automatically redirect from the dockerhub for the vault we have make some changes 

+ Create a directory on the folder where the yaml file is **mkdir /srv/vol/vault/config**

+ cd /srv/vol/vault/config
+ Here we write the file using **vi vault-config.hcl** 

Then we can use the following commands to run the jenkins and vault

docker-compose up -d 

once the containers is running we can go and check the corresponding ports on localhost

**Thema**: In this project, i have learn how to write docker compose file with custom jenkin image. Here we pull the image of configured jenkins image from my docker hub and how to run the vault config using hcl. Before doing this project i have pull the base image from the dockerhub that vault doesnot work properly,after that on deep understanding i have to create a valtconfig.hcl file then it's working. By wraping up this project i have sucessfully run the two containers using docker-compose file.



**German ---version**

**Docker-Compose-Datei mit Jenkins und Vault**

Schritte zum Ausführen der Docker-Compose-Datei

Schreiben Sie eine yaml-Datei, die zwei Images wie jenkins und vault enthält.

jenkins wird automatisch vom dockerhub umgeleitet für den vault müssen wir einige Änderungen vornehmen

Erstellen Sie ein Verzeichnis in dem Ordner, in dem sich die yaml-Datei befindet mkdir /srv/vol/vault/config

cd /srv/vol/vault/config

Hier schreiben wir die Datei mit vi vault-config.hcl

Dann können wir die folgenden Befehle verwenden, um Jenkins und Vault zu starten

docker-compose up -d

Sobald die Container laufen, können wir gehen und die entsprechenden Ports auf localhost überprüfen

**Thema**: In diesem Projekt habe ich gelernt, wie man eine Docker-Compose-Datei mit einem benutzerdefinierten jenkins-Image schreibt. Hier ziehen wir das konfigurierte Jenkins-Image von meinem Docker-Hub und wie man die Tresorkonfiguration mit hcl ausführt. Bevor ich dieses Projekt durchführe, habe ich das Basis-Image aus dem Docker-Hub gezogen, das Vault nicht richtig funktioniert, danach muss ich eine valtconfig.hcl-Datei erstellen, damit es funktioniert. Zum Abschluss dieses Projekts habe ich die beiden Container mit der Docker-Compose-Datei erfolgreich ausgeführt.


