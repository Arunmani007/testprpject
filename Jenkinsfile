pipeline {
  agent {
    node {
      label 'kube-master'
    }

  }
  stages {
    stage('test') {
      steps {
        sh 'kubectl get nodes'
      }
    }

  }
}