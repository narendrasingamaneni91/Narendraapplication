pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        echo 'Checkout'
        git(url: 'https://github.com/narendrasingamaneni91/Narendraapplication.git', branch: 'master', credentialsId: 'narendrasingamaneni91', poll: true, changelog: true)
      }
    }

    stage('compile') {
      parallel {
        stage('compile') {
          steps {
            bat 'mvn clean compile'
          }
        }

        stage('test') {
          steps {
            bat 'mvn test'
          }
        }

      }
    }

    stage('build') {
      steps {
        bat 'mvn clean package'
      }
    }

    stage('Archive artifacts') {
      steps {
        archiveArtifacts '*.war'
      }
    }

  }
}