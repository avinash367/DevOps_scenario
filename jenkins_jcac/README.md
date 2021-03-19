**Jenkins installation**

Steps to install jenkins

**Case:1**

1.open ubuntu terminal

2.check whether docker is install or not.if not install docker 

3.After installation check the version using 
**docker --version**

4.now we have to pull the jenkins from the docker hub using following command
**docker pull jenkins**

5.once image pulled and check by using **docker images**

6.once image is created we have to run the container using
**docker run -d --name container_name -p 8080:8080 -p 50000:50000 -v/var/jenkins_home jenkins**

7.after running the container we get the password.if we did not get type **docker logs container_id**

8.Then go the browser press **Localhost:8080**

9.To unlock jenkins use the step 7 process

10.After unlocking install all dependencies.Finally jenkins is running in the localhost

Thema: In this project i have learned how to install docker in a linux machine and how to install docker in local. up on that i have learned how to pull the images from the docker hub and run as container.


**Updated jenkins**

1.Login into the jenkins container in the localhost:8080 then using the following path jenkins>manage jenkins>at the right bottom we have seen the jenkins new version then right click and copy the link 

2.Go to the terminal on to root user and use the below command **docker container exec -u 0 -it (conatiner name) bash** 

3.Now we have to get the new version so use the command line **wget {copy the link address here (see the step 1)}**

4.Move it to the correct palce by using **mv ./jenkins.war /usr/share/jenkins**

5.Change the permissions using **chown jenkins:jenkins /usr/share/jenkins/jenkins.war**

6.Once the process is done exit the container using **exit** command 

7.Restart the container from localhost  using **docker container restart containername**

8.Now we see the updated jenkins 

**Work**: In this project i have learned how to updated jenkins locally.

**Case:2**

**Using jenkins_JCAC (jenkins configuration as a code)**

In this project i have spinup jenkins using dockerfile with corresponding plugins and Yaml file.While  am doing this project i have wondered with the automation. Why because when am running the jenkins it automatically take all the dependencies on the plugins file and creditionalls  on the yaml file and redirect the jenkins on the localhost.

While doing the task i came across how to spinup jenkins automatically using jcac file.

By using commands i have buld the jenkins

+ $ docker build -t imagename .  (eg: image name=my jenkins)

+ $ docker run -d --name myjenkins -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker jenkins

+ docker ps or ps -a (to check the container is running or not)
