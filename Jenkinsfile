pipeline {
         agent any
         tools {
            terraform 'terraform'
         }
         stages {
                 stage('terraform-version') {
                  steps {
                     sh "terraform -v"
                  }
                 }
                 stage('terraform-init') {
                  steps {
                      sh  "terraform init"
                   }
                 }
                stage('terraform-Plan') {
                  steps {
                      sh  "terraform plan"
                   }
                 }
                stage('terraform-Apply') {
                  steps {
                      sh  "terraform apply"
                   }
                 }
             
      }
}
