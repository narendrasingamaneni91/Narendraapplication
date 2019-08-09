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
    stage('artifact') {
      steps {
        archiveArtifacts(artifacts: '**/*.war', onlyIfSuccessful: true)
        bat 'mvn deploy'
      }
    }
  }
}