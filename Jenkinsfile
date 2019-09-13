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
        bat 'mvn clean package'
      }
    }
    stage('test') {
      steps {
        bat 'mvn test'
      }
    }
    stage('sonar') {
      steps {
        bat 'mvn sonar:sonar'
      }
    }
    stage('tomcat') {
      steps {
        bat 'rem'
      }
    }
  }
}