#!/usr/bin/env groovy
pipeline {
    
     agent {
        label 'billing-slave'
    }

    stages {
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
                    withAnt {
                        sh(script: 'ant -v deployCode', returnStdout: true)   
                    }
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
