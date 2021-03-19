**Maven_pipeline project**

1. Build configured jenkins from the dockerhub and run on the port 8080 by using below command
**docker run -d --name new_jenkins1 -p 8080:8080 -v/var/run/docker.sock:/var/run/docker.sock -v/usr/bin/docker:/usr/bin/docker newjenkins**

2. check whether the jenkins establish port on localhost if do so  we have to create a maven pipeline

3. New item>pipeline>pipeline syntax in declerative method
 
pipeline {

agent {

  docker {

   image 'maven:3-alpine'

args '-v /root/.m2:/root/.m2'

}

}

stages {

stage('checkout') {

steps {

checkout([$class: 'GitSCM', branches: [[name: '*/main']],

doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [],

userRemoteConfigs: [[url: 'https://github.com/david1412/java-program.git']]])

}

}

stage('Build') {


steps {

sh 'mvn -B -DskipTests clean package'

}

}

stage('Test') {

steps {

sh 'mvn test'

}

post {

always {

junit 'target/surefire-reports/*.xml'

}

}

}

stage('Deliver') {

steps {

sh './jenkins/scripts/deliver.sh'

}

}

}

}

Build the project .

Work: In this project i have run a jenkins  using jcasc file. while configuring the project i forgot to give the premissions to the jenkins on docker. so that when i am building the project i have an error with the permissions denied. After crossing that i have developed a another jenkins file with the permissions.By doing this project i have learned how to give a permission while on running container.This project gives the knowledge of building the maven pipeline


**German version** 

In diesem Projekt habe ich ein Jenkins mit jcasc-Datei ausgeführt. Während der Konfiguration des Projekts habe ich vergessen, die Berechtigungen für das Jenkins auf Docker zu geben, so dass ich beim Aufbau des Projekts einen Fehler mit den verweigerten Berechtigungen habe. Nach dem Überqueren, dass ich eine andere jenkins-Datei mit den permissions.by tun dieses Projekt habe ich gelernt, wie man eine Erlaubnis geben, während auf laufenden container.this Projekt gibt das Wissen der Aufbau der Maven-Pipeline 
 