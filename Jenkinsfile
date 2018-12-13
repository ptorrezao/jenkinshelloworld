pipeline {
    agent { 
        docker { 
            image 'docker' 
        } 
    }
    stages {
        stage('Teste') {
            steps {
                sh 'echo "Hello World"'
                sh 'ls'
            }
        }
    }
}