pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'chmod 777 ./buildDockerImage.sh'
        sh './buildDockerImage.sh'
      }
    }
  }
}