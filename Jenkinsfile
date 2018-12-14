pipeline {
  agent any
  stages {
    stage('Set Permissions to CI Files') {
      steps {
        sh 'chmod 777 ./CI/*'
      }
    }
    stage('Docker Registry Login') {
      steps {
        withCredentials([string(credentialsId: 'my-pass', variable: 'PW1')]) {
            echo "My password is '${PW1}'!"
        }
      }
    }
    stage('Build Docker Images') {
      steps {
        sh './CI/buildDockerImage.sh'
      }
    }
    stage('Push Docker Images') {
      steps {
        sh './CI/publishDockerImages.sh'
      }
    }
  }
}