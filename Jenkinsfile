pipeline{
  agent any
  stages{
    stage("Clone"){
      steps{
        script{
            git branch: 'jenkins', credentialsId: 'github-token', url: 'https://github.com/Primus-Learning/jan-tf-jenkins.git'
            sh"ls -l"
        }
      }
    }
  }
}
