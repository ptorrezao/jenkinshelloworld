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
            sh 'docker login -u="$USERNAME" -p="$PASSWORD"'
        }
      }
    }
    stage('Build Docker Images') {
      steps {
        sh 'docker-compose build'
      }
    }
    stage('Push Docker Images') {
      steps {
        sh 'docker-compose push'
      }
    }
  }
}