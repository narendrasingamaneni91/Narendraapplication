pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/Ajayvarma8142/Narendraapplication.git', branch: 'master')
      }
    }
    stage('build') {
      steps {
        bat 'java -version'
      }
    }
    stage('name') {
      steps {
        bat 'echo "ajay"'
      }
    }
  }
}