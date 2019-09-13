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
    stages {
        stage('Email Notification') {
            steps {
                echo "Ok"
            }
        }
    }
   post {
    always {
        emailext body: 'A Test EMail', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'Test'
    }
    stage('deploy') {
      steps {
        bat 'del "C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps\\cangkitsolutions.war " && xcopy "C:\\Program Files (x86)\\Jenkins\\workspace\\madhuapp_master\\target\\cangkitsolutions.war" "C:\\Program Files\\Apache Software Foundation\\Tomcat 8.5\\webapps"'
      }
    }
  }
}
