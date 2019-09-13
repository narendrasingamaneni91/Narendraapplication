pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git 'https://github.com/madhurichittabathina/madhuapp.git'
      }
    }
    stage('build') {
      steps {
        bat 'mvn clean install'
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
    stage('Email Notification'){
       steps {
    
            mail bcc: '', body: 'DevOps', cc: '', from: 'madhuri.chittabathina92@gmail.com', replyTo: '', subject: 'hi', to: 'madhuri.chittabathina92@gmail.com'
    }
    }
    stage('deploy') {
      steps {
        bat 'del "C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\cangkitsolutions.war " && xcopy "C:\\Program Files (x86)\\Jenkins\\workspace\\madhuapp_master\\target\\cangkitsolutions.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps"'
      }
    }
  }
}
