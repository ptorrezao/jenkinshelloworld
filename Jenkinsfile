pipeline {
  agent any
  stages {
    stage('Build Docker Images') {
      steps {
        sh 'chmod 777 ./CI/buildDockerImage.sh'
        sh './CI/buildDockerImage.sh'
      }
    }
  }
}