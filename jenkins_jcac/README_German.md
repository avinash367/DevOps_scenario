**Jenkins-Installation**

Schritte zur Installation von Jenkins

**Fall:1**

1.ubuntu terminal öffnen

2.prüfen Sie, ob docker installiert ist oder nicht.wenn nicht, installieren Sie docker

3.nach der Installation prüfen Sie die Version mit docker --version

4.jetzt müssen wir jenkins aus dem Docker-Hub mit folgendem Befehl ziehen docker pull jenkins

5.sobald das Image gezogen wurde, überprüfen Sie es mit docker images

6.sobald das Image erstellt ist, müssen wir den Container mit docker run -d --name container_name -p 8080:8080 -p 50000:50000 -v/var/jenkins_home jenkins starten

7.nach dem Ausführen des Containers erhalten wir das Passwort.wenn wir nicht bekommen haben, geben Sie docker logs container_id

8.dann gehen Sie im Browser auf Localhost:8080

9.um jenkins freizuschalten, gehen Sie wie in Schritt 7 vor

10.nach der Freischaltung installieren Sie alle Abhängigkeiten.schließlich läuft jenkins auf dem localhost

**Thema**: In diesem Projekt habe ich gelernt, wie man Docker auf einem Linux-Rechner installiert und wie man Docker auf dem lokalen Rechner installiert. darauf aufbauend habe ich gelernt, wie man die Images aus dem Docker Hub zieht und als Container laufen lässt.

**Aktualisiertes jenkins**

1.Loggen Sie sich in den Jenkins-Container auf localhost:8080 ein und verwenden Sie den folgenden Pfad: jenkins>manage jenkins> rechts unten sehen Sie die neue Version von Jenkins, klicken Sie mit der rechten Maustaste und kopieren Sie den Link

2.Gehen Sie zum Terminal mit dem Root-Benutzer und verwenden Sie den folgenden Befehl: docker container exec -u 0 -it (Name des Containers) bash

3.Jetzt müssen wir die neue Version holen, also verwenden Sie die Befehlszeile wget {kopieren Sie die Link-Adresse hier (siehe Schritt 1)}

4.verschieben Sie sie mit mv ./jenkins.war /usr/share/jenkins an den richtigen Ort

5.ändern Sie die Rechte mit chown jenkins:jenkins /usr/share/jenkins/jenkins.war

6.wenn der Prozess abgeschlossen ist, beenden Sie den Container mit dem Befehl exit

7.Starten Sie den Container von localhost aus mit docker container restart containername neu.

8.jetzt sehen wir das aktualisierte jenkins

**Arbeit**: In diesem Projekt habe ich gelernt, wie man Jenkins lokal aktualisiert.


**Fall:2**

Verwendung von jenkins_JCAC (jenkins configuration as a code)

In diesem Projekt habe ich Jenkins mit Hilfe einer Dockerdatei mit den entsprechenden Plugins und einer Yaml-Datei aufgesetzt, wobei ich mich über die Automatisierung gewundert habe. Warum? Wenn ich Jenkins ausführe, nimmt es automatisch alle Abhängigkeiten aus der Plugin-Datei und die Creditionalls aus der Yaml-Datei und leitet Jenkins auf den lokalen Host um.

Während ich die Aufgabe erledigte, stieß ich darauf, wie man jenkins automatisch mit der jcac-Datei starten kann.

Mit den folgenden Befehlen habe ich jenkins gebaut

$ docker build -t imagename . (z.B.: image name=my jenkins)

$ docker run -d --name myjenkins -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker jenkins

docker ps oder ps -a (um zu prüfen, ob der Container läuft oder nicht)

