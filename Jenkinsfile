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
        bat 'mvn install'
      }
    }
    stage('sonarqube') {
      steps {
        bat 'mvn sonar:sonar'
      }
    }
  }
}