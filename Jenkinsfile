pipeline {
    agent { 
        docker { 
            image 'docker' 
        } 
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                //sh 'docker build -t helloworld:stable -f .\\HelloWorld\\HelloWorld\\Dockerfile .\\HelloWorld\\'
            }
        }
    }
}