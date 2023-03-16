pipeline {
    
    agent any
    
    stages {
        
        stage('SCM Checkout'){
           steps {
                git credentialsId: '9a8edc2d-b07c-4770-b05e-098ffa6d6cd1', 
                url: 'https://github.com/Arjun3131/Git-Demo.git',
                branch: 'master'
           }
        }
        stage('Build'){
            steps{
                script{
                    sh '''
                    echo 'building with maven'
                    mvn clean install 
                    '''
                }
            }
        }
        stage('sonar Analysis'){
            steps{
                script{
                    sh '''
                    echo 'building with maven'
                    mvn sonar:sonar 
                    '''
                }   
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh '''
                    docker build -t myimage:latest . 
                    '''
                }
            }
        }
    }
}
