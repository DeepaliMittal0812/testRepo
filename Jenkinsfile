#!/usr/bin/env groovy
pipeline {

 agent any
    stages {
        stage('PMD') {
            steps {
                echo 'PMD....'
                    bat label: '', script: 'ant PMD'
            }
        }
        /*stage('Validation') {
            steps {//
                echo 'Validating..'
                echo 'Validating..'
		    	withAnt { 
                    sh(script: 'ant -v', returnStdout: true)   
                }
            }
        }*/
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                bat label: '', script: 'ant deployCode'

            }
        }
        
    }
}
