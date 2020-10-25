pipeline {
    agent any
    tools {
    terraform 'terraform_test'
    }
        
	
        environment {
	    AWS_ACCESS_KEY_ID = credentials('jenkins-aws-access-key')
        AWS_SECRET_KEY_ID = credentials('jenkins-aws-secret-key')
        TERRAFORM_CMD = 'docker run -w /app -v /var/lib/jenkins/workspace/git-terraform-jenkins-aws/terraform-jenkins-aws/:/app -v /var/lib/jenkins/terraform.tfvars:/app/terraform.tfvars hashicorp/terraform:light'
        TF_IN_AUTOMATION = '1'
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
