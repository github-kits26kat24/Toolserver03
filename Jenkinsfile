 pipeline {
    agent any 
    environment  {
                AWS_ACCESS_KEY = credentials ('AWS_ACCESS_KEY')
                AWS_SECRET_ACCESS_KEY = credentials ('AWS_SECRET_ACCESS_KEY')
                AWS_REGION = 'eu-west-1'
    }
    stages {
        stage ('terraform validate') {
            steps  {
                echo 'about to perform code validation'
                sh 'terraform init'
                sh 'terraform validate'
            }
        }
        stage ('terraform plan') {
            steps  {
                echo 'about to perform terraform plan'
                sh 'terraform plan'
            }
        }
        stage ('terraform apply') {
            steps  {
                echo 'about to perform terraform apply....'
                sh 'terraform apply -auto-approve'
            }
        }
    }
    
    post {
        always  {
            echo ' i just ran a pipleine'
            deleteDir()
        }
        success {
            echo 'pipeline ran successfully'
        }
        failure {
            echo 'pipeline failed'
        }
    }
}
    
