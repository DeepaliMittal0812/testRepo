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
<<<<<<< HEAD
            stage('Deploy') {
                steps {
                    echo 'Deploying....'
                   
                         bat label: '', script: 'ant -v deployCode'
                    
                }
=======
              stage('Deploy') {
            steps {
                echo 'Deploying....'
                bat label: '', script: 'ant deployCode'
>>>>>>> ad043d0186c81263f5900429a73c6d3e14be77d0
            }
        }
             /*  stage('Merging Branch') {
                
                steps {
                    echo 'Merging Branch....'
                    echo 'Merging branch ${ghprbSourceBranch} to ${ghprbTargetBranch}'
                    script {
                        def ut = build job: 'Salesforce Dev', parameters: [string(name:'sha1', value: "${sha1}")]
                        result1 = ut.getResult()
                    }
                     sh(script: 'git checkout ${ghprbTargetBranch}', returnStdout: true)   
                        sh(script: 'git merge origin/${ghprbSourceBranch}', returnStdout: true)   
                        sh(script: 'git push origin/${ghprbTargetBranch}', returnStdout: true)  
                }
        
            }*/
        
    }
}
