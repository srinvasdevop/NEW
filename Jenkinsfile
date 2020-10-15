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

    
    stage('Deploy App') {
          withKubeConfig(caCertificate: '', clusterName: 'demo-eks', contextName: '', credentialsId: 'yes', namespace: '', serverUrl: 'https://38741E1C0141905234F42940381449A0.gr7.us-east-1.eks.amazonaws') {
    kubectl get pods --all-namespaces
}
     
    }

  }
   
}
