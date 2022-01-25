pipeline {
  agent {
    node {
      label 'kube-master'
    }

  }
  stages {
    stage('build') {
      steps {
        build '/root/project/workspace/testprpject_main/vprofile-project-VP-TEST/pom.xml'
      }
    }

  }
}