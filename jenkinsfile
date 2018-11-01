pipeline {
        agent any

        stages {
            stage('Checkout') {
                steps {
                                checkout scm                            }
                    }
                stage('Build') {
                steps {
                                sh '/home/jyo/Jyothi/apache-maven-3.5.4/bin/mvn install'
                }
                }
        }
}

