node{
    

    stage('Clone repository') {
        
      git 'https://github.com/nagarjuna-nani/Git-Demo.git'
        checkout scm 
        
    }    
    stage('Build image') {
       

        sh label: '', script: 'docker build -t docker797/naglogin:1 .'
    }
    stage('push image'){
        withCredentials([string(credentialsId: 'docker-id', variable: 'password')]) {
            sh label: '', script: "docker login -u docker797 -p ${password}"
    }
        sh label: '', script: 'docker push docker797/naglogin:1'
    }
    stage('Run Container'){
    sh label: '', script: 'docker run --name Final -d -p 8081:8080 docker797/naglogin:1'
    }
        
}
