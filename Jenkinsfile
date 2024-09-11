pipeline{
  agent any
    parameters{
        choice(name: 'action', choices: ['build', 'destroy'], description: 'Build Or Destroy Infrastructure')
        string(name: 'aws_region', defaultValue: 'us-east-1', description: 'region name')
        string(name: 'team_name', defaultValue: 'blue', description: 'Team name')
        string(name: 'env_name', defaultValue: 'dev', description: 'env name')
        string(name: 'backend_ami', defaultValue: '', description: 'ami id ')
        string(name: 'backend_instance_type', defaultValue: '', description: 'instance type')
  }
  stages{
    stage("Clone"){
      steps{
        script{
            git branch: 'jenkins', credentialsId: 'github-token', url: 'https://github.com/Primus-Learning/jan-tf-jenkins.git'
            sh"ls -l"
          echo "action: ${params.action}"
        }
      }
    }
  }
}
