pipeline{
    agent any
    
    stages{
        stage("Git Clone"){
            steps{
                    git branch: 'main', url: 'https://github.com/Arunmani007/testprpject.git'
            }
        }
        stage("Build docker image"){
            steps{
                sh 'SPLUNK_PASSWORD=password docker-compose up -d'
            }
        }
    }
}
