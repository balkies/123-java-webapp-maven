pipeline {

agent { label 'master' }

tools {
	
  maven "M2_HOME"
  jdk "jdk8"
  

}

stages {
stage("Build using maven") {
    steps {
    echo "am building using maven"
	bat(/"%M2_HOME%\bin\mvn" -Dmaven.test.failure.ignore clean package/)
    }
}

stage("Results") {
    steps {
    echo "this is test stage"
	archiveArtifacts 'target/*.war'
	    
    }
}
	stage("Deploy") {
    steps {
   
	    deploy adapters: [tomcat8(credentialsId: '5f6586f0-ddf2-4684-99b9-17d638343caa', path: '', url: 'http://localhost:8080/')], contextPath: 'target', onFailure: false, war: '**/*.war'
}
}
}
}
