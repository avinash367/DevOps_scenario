**Jenkins integeration with Vault**

1. Run the configured jenkin image from my dockerhub account
2. Using docker-compose yaml file i have run the jenkins and vault (Check on my repo jenkins_vault)
3. Before integerated jenkins with vault we have to reach some pre requsites i.e maven,git,docker must be installed on the local machine by using
 + mvn --version
 + git --version
 + docker --version
 + service docker status
4. When both containers are ready  then follow the below steps in vault
	+ Key shares = 2
    + Key threshold = 2
5. Intialize and we can see the download key option. after by using keys we have to unseal the vault
6. Enable new engine>kv>path=secret>version =2 >enable engine
7. Now we have to create a secret credtions by using 
 + create secret>path for this secret = dockerhub
 + version data > username : docker id
 + password : docker password
8. Now go back to the jenkins we have to check the plugins which are required to integereate with the vault.
in my case i have all plugins why because i have already configure the jenkins.
9. Maven integeration, Hashicorp vault and Hashicorp vault Pipeline plugins we must install
10. Manage jenkins>configure system >vault plugin> vault ip adreess,, then we have to give the vault creditionals , for that we have select kind:vault TOken credential
 + Token: secret key token (download keys)
 + ID: vault-token
 + Description: Vault -token
11. Now all done the process we have to give the maven path under maven plugin, fot that got to manage jenkins>global tool configuration>maven 
 + Name: Maven
 + Maven_Home:/usr/share/maven ....then save
12. Now the process has come to end by creating a pipeline to build and integerate with vault secrets
 + jenkins>New item> pipeline> create
 + Go to pipeline section and add the script 

node {

    stage ('GIT CheckOut') {
        git 'https://github.com/VamsiTechTuts/java...​
    }
    stage ('Build Artifact') {
        dir('demoweb') {
            def MAVEN_HOME = tool name: 'maven3', type: 'maven'
            def MAVEN_CMD = "${MAVEN_HOME}/bin/mvn"
            sh "${MAVEN_CMD} clean package"
        }
    }
    stage("Docker Build"){
        dir('dock') {
            sh 'docker build -t avinash/dock .'
        }
    }
    stage("Docker Push") {
        withVault(configuration: [timeout: 60, vaultCredentialId: 'vault-token', vaultUrl: 'http://139.30.190.69:8200'​], vaultSecrets: [[path: 'secret/dockerhub', secretValues: [[vaultKey: 'username'], [vaultKey: 'password']]]]) {
            sh 'docker login -u $username -p $password'
        }
        sh 'docker push avinash/dock'
    }
}
13. Now the jenkins is integerated with vault and read the secrets  
