pipeline {
    agent { label 'dockerAgent1' }
    stages {
        stage('Fetch git repo and build docker image') {
            steps {
                git url: 'https://github.com/SimonaEsy/appdev.git', branch: 'main'
                sh 'ls -la'
                sh 'docker build -t hello_py:1 .'
                sh 'docker images'
            }
        }
        stage('Run hello_py:1 image and run commands within the spawned container') {
            agent {
                docker {
                  label 'dockerAgent1'
                  image 'hello_py:1'
                }
            }
            steps {
                sh 'python --version'
                sh 'python /usr/src/app/hello_world.py'
            }
        }
    }
}
