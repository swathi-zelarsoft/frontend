pipeline{
agent any
     stages{
        stage("Prepare Artifacts"){
        steps {
        sh ```
        zip -r ../frontend.zip *
        ```
        }
        }
       }
     }
