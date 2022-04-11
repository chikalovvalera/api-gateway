pipeline {
  agent any
  tools {
    maven 'Maven'
    jdk 'Java'
  }
  stages {
    stage('Compile') {
        steps {
            sh "mvn package spring-boot:repackage"
        }
    }
    stage('Build') {
        steps {
            sh "docker build -t api-gateway ."
        }
    }
    stage('Run') {
        steps {
            sh "docker run -d -p 8765:8765 api-gateway"
        }
    }
  }
}