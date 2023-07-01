pipeline{
    agent any
    parameters {
          string defaultValue: 'Suba', description: 'Testing', name: 'Arun'
        }
    stages{
        stage("this is testing"){
            steps{
                sh 'docker build .'
            }
        }
    }
}
