pipeline{
    agent any

    stages{
        stage("Checkout"){
            steps{
                git 'https://github.com/MohamedMoktar/iti-g111.git'
            }
        }
        stage("Build"){
            steps{
                 sh 'mvn -B -DskipTests clean package'
            }
        }
        // stage('Test') {
        //     steps {
        //         sh 'mvn test'
        //     }
        // }
        stage('JUnit Tests'){
            steps{
                            junit '**/target/surefire-reports/TEST-*.xml'
                            archiveArtifacts 'target/*.jar'
                }             
          }
        
        stage("Build Docker Image"){
            steps{
                sh ''' 
                docker build -t BMI-pipeline 
                docker push mohmedmokhtar/task_4
                '''
            }
        }
    }
}