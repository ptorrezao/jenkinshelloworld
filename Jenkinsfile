pipeline {
  agent any
  stages {
    stage('Docker Registry Login') {
      steps {
       withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId:'DockerHub_Login', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
            sh 'docker login repo.treescale.com -u="$USERNAME" -p="$PASSWORD"'
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