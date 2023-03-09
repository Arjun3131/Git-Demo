pipeline {
    
    agent any
    
    stages {
        
        stage('SCM Checkout'){
           steps {
                git credentialsId: 'd7296c65-3594-4ef7-98c0-a57aa78b1078', 
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
