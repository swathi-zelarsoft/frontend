pipeline{
agent any
     stages{
        stage("Prepare Artifacts"){
        steps {
        sh '''
        zip -r ../frontend.zip *
        '''
        }
        }
        stage("upload artifacts"){
        steps{
        sh '''
        curl -v -u admin:admin123 --upload-file frontend.zip http://192.168.0.52:8081/repository/frontend/frontend.zip
        '''
        }}
       }
     }
