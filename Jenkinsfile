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
	Stage("Deploy to k8") {
	   kubernetsDeploy(
	      configs: 'pods.yml',
		  kubecocnfigId: 'kubeconfig_con'
		  enableConfigSubstitution: true
		)
	}
}
