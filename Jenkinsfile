pipeline
{
  agent any
 
  stages
  {
    stage('BUILD')
    {
      steps
      
      {
        sh 'docker build -t rajeshktm007/sum:latest .'
      }
    }
    stage('PUSH to DOCKERHUB')
    {
      steps
      {
        withCredentials([string(credentialsId: 'DOCKERHUBPASSWD', variable: 'DOCKERHUBPASSWD')]) {
        sh 'docker login -u rajeshktm007 -p ${DOCKERHUBPASSWD}'
        }
        
        sh 'docker push rajeshktm007/sum'
      }
    }
      stage('DEPLOYMENT')
      {
        steps{
          sh 'docker run --name firstdeplyment rajeshktm007/sum'
        }
        
    }
  }
}
      
