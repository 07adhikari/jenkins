pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git([url: 'https://github.com/07adhikari/jenkins', branch: 'master'])

      }
    }
    stage('Docker build') {
      steps{
        script {
          dockerImage = docker.build surajadhikar/hu_devops_19_2021_465
        }
      }
    }
      
    stage('Approval') {
      steps{
         docker run -it --rm --name suraj_custom ./mvnw test
      }
    }
  }
}
    stage('Deploy Image') {
      steps{
        script {
          docker.https://hub.docker.com/repository/docker/surajadhikar/hu_devops_19_2021_465( '', Dockerhub ) {
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')

          }
        }
      }
    }
    
