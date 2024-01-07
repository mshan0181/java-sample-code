pipeline {
agent { label 'Agent-linux_ubuntu' }
	stages {
		stage ('build') {
	         steps {
                echo " This is the build step "
                sh 'hostname' 
                sh 'date '
                     }
		}
		stage ('test: integration-&-quality') {
			steps {
                      echo " This is the integration testing step   "
                     }
		}
		stage ('test: functional') {
			steps {
                      echo " This is the functional testing step   "
                     }
		}
		stage ('test: load-&-security') {
			steps {
                      echo " This is the Load testing step   "
                     }
		}
		stage ('approval') {
			steps {
                      echo " This is the Approval step for deployment   "
                     }

		}
		stage ('deploy:prod') {
			steps {
                      echo " This is the Deployment Step   "
                     }

		 }
	}
}

