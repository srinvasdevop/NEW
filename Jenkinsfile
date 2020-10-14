pipeline { 
    environment { 

        registry = "srinivaass1/demopush" 

        registryCredential = 'dockerhub_id' 

        dockerImage = '' 

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
                    myapp = docker.build("srinvasdevop/demo:${env.BUILD_ID}")
                }
     stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }

                } 

            }

        } 
            
        
    


    
    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "hellowhale.yml", kubeconfigId: "mykubeconfig")
        }
      }
    }

}
