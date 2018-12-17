pipeline {
  agent any
  stages {
    stage('Set Permissions to CI Files') {
      steps {
        sh 'chmod 777 ./CI/*'
        sh 'ls -a ./CI/'
      }
    }
    stage('Docker Registry Login') {
      steps {
       withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId:'DockerHub_Login', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
            sh 'ls -a ./CI/'
            sh './CI/loginDocker.sh $USERNAME $PASSWORD'
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