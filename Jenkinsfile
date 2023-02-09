pipeline {
    agent any
    stages {
        stage("checkout") {
        steps { 
            checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/chaitanyapriya123/pipeline.git']])
               
        }
    }
        stage("Docker Version") {
            steps {
                sh "docker --version"
            }
        }
        stage("git Version") {
            steps {
                sh "git --version"
            }
        }
        stage('Build Docker Image with num') {
            steps {
                sh 'docker build -t myimage:${BUILD_NUMBER} . '
                sh 'docker images'
            }
        
        
            
        }
     
    }
   
}

