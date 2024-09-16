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
    stage("Clone and Update Tfvars"){
      steps{
        script{
            git branch: 'main', credentialsId: 'githubcreds', url: 'https://github.com/Primus-Learning/jan-tf-jenkins.git'
            sh"""
              echo "before update"
              cat dev.tfvars
              sed -i 's/REGION/${params.aws_region}/g $WORKSPACE/dev.tfvars'
              sed -i 's/TEAM_NAME/${params.team_name}/g $WORKSPACE/dev.tfvars'
              sed -i 's/ENV_NAME/${params.env_name}/g $WORKSPACE/dev.tfvars'
              sed -i 's/AMI/${params.backend_ami}/g $WORKSPACE/dev.tfvars'
              sed -i 's/INSTANCE_TYPE/${params.backend_instance_type}/g $WORKSPACE/dev.tfvars'
              echo "after update"
              cat dev.tfvars
            """
        }
      }
    }
    stage("Terraform Apply"){
      when { equals expected: 'build', actual: params.action }
      steps{
        script{
          sh"""
          echo "Aplying the Infra"
          """
        }
      }
    }
    stage("Terraform Destroy"){
      when { equals expected: 'destroy', actual: params.action }
      steps{
        script{
          sh"""
          echo "Destroying the Infra"
          """
        }
      }
    }
  }
}
