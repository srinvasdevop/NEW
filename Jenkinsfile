pipeline {

  environment {

  registry = "srinivaass1/demopush"

  registryCredential = 'dockerhub'

}

 agent any


 stages {


  stage('Checkout Source') {

   steps {

    git url:'https://github.com/srinvasdevop/NEW.git', branch:'main'

   }

  }

   

   stage("Build image") {

      steps {

        script {

          myapp = docker.build("srinivaass1/demopush:${env.BUILD_ID}")

        }

      }

    }

   

   stage("Push image") {

      steps {

        script {

          docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {

              myapp.push("latest")

              myapp.push("${env.BUILD_ID}")

          }

        }

      }

    }
	 stage("Deploy to k8") {
		 steps { 
	   kubernetesDeploy(
	      configs: 'helloworld.yml',
		  kubeconfigId: 'kubeconfig_con',
		  enableConfigSubstitution: true
		)
		 }
	}
}
}
