def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-personal']]


pipeline {
    agent any
    tools {
    terraform 'terraform_test'
    }
        
	
        
    }
	
    stages{
        stage('check out'){
            steps{
                sh 'rm -rf october_build && git clone https://github.com/basaka123/october_build.git'
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
