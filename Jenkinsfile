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
                sh 'rm -rf *;git@https://github.com/basaka123/october_build.git'
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
