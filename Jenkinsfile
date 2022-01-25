pipeline {
  agent {
    node {
      label 'kube-master'
    }

  }
  stages {
    stage('build') {
      steps {
        build 'vprofile-project-VP-TEST/pom.xml'
      }
    }

  }
}