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

  steps {

    script {

         // kubernetesDeploy( configs: 'hellowhale.yml', kubeconfigId: 'impelsys-id')
     withKubeConfig(caCertificate: 'LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUN5RENDQWJDZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJd01UQXhNakU0TkRneU1sb1hEVE13TVRBeE1ERTRORGd5TWxvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBT0NxCjFXRG1yVVBJUEd4ZzJFKzBiQjUzbHY3K0Y5M1ZoVlpnSjdKenFIUGNKamUzb0hMaEQxYVVSSFFlWjM0ZmdCSjEKUjROUko5NDRqUUxwcTVTODY0eXVZekRsc3F1MjVTOTBVMFRYc2V2dXI5VlA1aDVybXJSMXgybkMwaUU3QU9uVQpnQlF5V3JuZ2FDUmd5cjZBZTNGTS9TeFdncUNZOTBRbTNjWmlyY0EzM1V6Zi82aFd0L054M3FSQWpUekRXd1hDCndPcGoyNnA4R3VkK0JkSm8wQTBBYjhVbmY1YXpDYWZoNGdpeE1Lb202MnR6bEFBV1dwNy9mOWxwT0l6cklwVW8KZ1c0cmNKQ2tNTjZsYkxGMVpTMloxbDVmbndqNVR1NTR5K1JSNC9hN1pZdUJVd1JqRTE2R3ZFRVJtRkRHRWZnWgpTZys5M0gxdFVvMU5KVXVkQ09jQ0F3RUFBYU1qTUNFd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQkFEaHp5c3pvL0h1emtkS1FTcHRyMkk4Z1J5Y28KdnRBMkhjTll0QjlCNDIwNEdFbWJPd2RIUSsyMlgxemdoai9SckkyeTZ3TUlDbXI1M3FYTEhrazluOGVBS2YyYwpHVXVtN1pUNVFOb2VXS25PRzZLaVVSR3hmcHRFL2hoODlZWVE0US9PQnZGNlJTTE5VOTR2WTF4MkRDK2J5NlpVCkwyZzFQNUxURGtRRElRN1hMVjV4VUFsUCtlNUJsVWZ0NW8ydFdtMUFodm9JbzRHbFZFSHl6MlJMUmh6c29OdmIKbW9BZmdvUmE2Zk1GbGxQV1N3cFNVWTZpUXB1ZnBkY0IwdGM3R0ZLVnl3NXdOYVgyVklWMjRpSzVyVHRGd0IxMgpzaUR1MFUrL1NoUzluUDdKU2EybndQc1ArdVZnYng3elNyQ1A5QU1neHZGeTBTTjRlY0E3TUxJOW5XWT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=', clusterName: 'demo-eks.us-east-1.eksctl.io', contextName: 'arn:aws:eks:us-east-1:897289914895:cluster/demo-eks', credentialsId: 'eks-cluster', namespace: 'default', serverUrl: 'https://38741E1C0141905234F42940381449A0.gr7.us-east-1.eks.amazonaws') {
    sh 'kubectl apply -f hellowhale.yml -n default'
}


 }

  

  }

   

  }


 }

  

}


