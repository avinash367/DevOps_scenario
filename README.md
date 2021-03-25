In this project i had learned how to trigger any changes on the the github repositories
 will  build the test on the jenkins. so that  i have taken a project of mine in the git repository and add the webhooks.



For this project i have run a jenkins from the docker hub on the port of 8080 by using following command

**docker run -d -p 8080:8080 --name my jenkins jenkins/jenkins:latest**

once the container is running then go on the server and create a job

New item>create a job > Freestyle project > ok

source code Management > Git> URL of the git project (example.. i have taken a maven project)

under the git.. create a git creditionals .

Build triggers > Github hook trigger for Gitscm polling .

once everything is done in the jenkins  then go into the git hub. open the project under 

setting> webhooks > payload url of jenkins > Add webhook.

That’s it when any changes commit on the github then automataically builds the project.




---Germnan version

In diesem Projekt hatte ich gelernt, wie man alle Änderungen an den Github-Repositories auslöst
 den Test auf den Jenkins bauen. Also habe ich ein Projekt von mir im Git-Repository genommen und die Webhooks hinzugefügt.



Für dieses Projekt habe ich ein Jenkins aus dem Docker-Hub auf dem Port 8080 mit folgendem Befehl ausgeführt

**docker run -d -p 8080:8080 --name my jenkins jenkins/jenkins:latest**

Sobald der Container läuft, gehen Sie auf den Server und erstellen Sie einen Job

Neues Element > Job erstellen > Freestyle-Projekt > ok

Quellcode-Verwaltung > Git> URL des Git-Projekts (Beispiel.. ich habe ein Maven-Projekt genommen)

unter dem Git.. eine Git-Creditionals erstellen.

Build-Trigger > Github-Hook-Trigger für Gitscm-Polling .

wenn alles in jenkins erledigt ist, gehen Sie in den git hub. öffnen Sie das Projekt unter 

einstellung> webhooks > payload url von jenkins > Webhook hinzufügen.

Das war's, wenn irgendwelche Änderungen auf github übertragen werden, wird das Projekt automatisch gebaut.








