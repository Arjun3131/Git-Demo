pipeline {
    
    agent any
    
    stages {
        
        stage('SCM Checkout'){
           steps {
                git credentialsId: 'd7296c65-3594-4ef7-98c0-a57aa78b1078', 
                url: 'https://github.com/Arjun3131/Jenkinsflow.git',
                branch: 'main'
           }
        }

        stage('Build'){
            steps{
                script{
                    sh '''
                    echo 'building with maven'
                    mvn clean install --file *.pom
                    '''
                }
            }
        }
        
    }
}
