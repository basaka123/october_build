pipeline {
    agent any
    tools {
    terraform 'terraform_test'
    }
        
    environment {
	    AWS_ACCESS_KEY_ID = credentials('aws-personal')
        AWS_SECRET_KEY_ID = credentials('aws-personal')
    }   
        
    stages{
        stage('check out'){
            steps{
                git branch: 'main', credentialsId: 'd8e80ce0-6e6d-4518-a511-3399c280b57e', url: 'https://github.com/basaka123/test_pipeline'
            }
        }
        stage ('terraform init'){
          steps{
              sh 'terraform init'
          }
    }
        stage ('terraform apply'){
          steps{
              sh 'terraform apply --auto-approve'
          }
    }
//    stage ('terraform destroy'){
//          steps{
//              sh 'terraform destroy --auto-approve'
//          }
//    }
   }
}
