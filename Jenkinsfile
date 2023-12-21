pipeline {
  agent any
  stages {
    stage('Buold') {
      steps {
        script {
          checkout scm
          def customImage = docker.build("${registry}:${env.Build_ID}")
        }

      }
    }

  }
  environment {
    registry = 'histomus/jenkins_pipline'
  }
}