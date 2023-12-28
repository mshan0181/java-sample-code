pipeline {
  agent any
  stages {
  stage('Stage 1') {
      steps {
        script {
          echo 'Stage 1'
          javac HelloWorld.java
          java HelloWorld
        }
      }
    }
  stage('Stage 2') {
      steps {
        script {
          echo 'Stage 2'
        }
      }
    }
  }
}
