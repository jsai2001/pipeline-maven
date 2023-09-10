pipeline {

    agent any

    environment {
      PASSWORD = credentials('dockerhub-pass')
    }
    
    stages {

        stage('Build') {
            steps {
                sh '''
		./jenkins/build/maven.sh mvn -B -DskipTests clean package
		./jenkins/build/build.sh
		'''
   		}
        }

        stage('Test') {
            steps {
                sh './jenkins/test/maven.sh mvn test'
            }
        }

        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}
