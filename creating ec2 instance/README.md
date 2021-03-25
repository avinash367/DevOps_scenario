**Use case**: While doing this project, i have used the terraform to provision ec2 instance and bootstap the docker and docker-compose.

By doing this work i have learned so many things for creating a ec2 instance and i have got so many errors too. but i ahve tried to solve thoose errors one by one and finnally achieved the task challenge. Below states that the errors i have face during the project

**Challanges**:

- VPC and subnet problems
- Availability zones and regions
- SSh-key // so i have taken a ssh key with the this command **ssh-keygen**


Firstly i have created the ec2 isntance and after that i have installed the docker and docker compose file on that instance

so that i have created a file states that **install.sh** and immplemented the file on the main.tf or else we can write the commands for the installing the docker and docker-compose files on main.tf itself.

i have tried both the cases and working perfectly.

By finally once the instance is created on the AWS server and i have coonect it locally  using ssh client.

once the ssh key is generated and the got the path cd /home/avinash/.ssh and give the excuitable permission for that particular file id_rsa

ssh -i "id_rsa" copy the the ssh clent(ec2-user@ec2-18-130-28-157.eu-west-2.compute.amazonaws.com).
  




--- German Version

**Anwendungsfall**: Bei diesem Projekt habe ich Terraform verwendet, um eine ec2-Instanz bereitzustellen und Docker und Docker-Compose zu starten.

Durch diese Arbeit habe ich so viele Dinge für die Erstellung einer ec2-Instanz gelernt und ich habe so viele Fehler zu bekommen. aber ich ahve versucht, thoose Fehler einer nach dem anderen zu lösen und schließlich erreicht die Aufgabe Herausforderung. Unten steht, dass die Fehler, die ich während des Projekts Gesicht haben

**Änderungen**:

- VPC- und Subnetz-Probleme
- Verfügbarkeitszonen und Regionen
- SSh-Schlüssel // also ich habe einen ssh-Schlüssel mit dem folgenden Befehl **ssh-keygen** erstellt


Zuerst habe ich die ec2-Instanz erstellt und danach habe ich die Docker- und Docker-Compose-Datei auf dieser Instanz installiert

Ich habe also eine Datei mit dem Namen **install.sh** erstellt und die Datei in der main.tf implementiert oder wir können die Befehle für die Installation der Docker- und Docker-Compose-Dateien in die main.tf selbst schreiben.

Ich habe beide Fälle ausprobiert und es funktioniert perfekt.

Sobald die Instanz auf dem AWS-Server erstellt ist und ich sie lokal mit dem ssh-Client verbunden habe.

Sobald der ssh-Schlüssel generiert ist und der Pfad cd /home/avinash/.ssh und geben Sie die entsprechende Berechtigung für diese bestimmte Datei id_rsa

ssh -i "id_rsa" Kopieren Sie den ssh-Client (ec2-user@ec2-18-130-28-157.eu-west-2.compute.amazonaws.com).
  