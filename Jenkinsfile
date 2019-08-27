pipeline {

agent { label 'master' }

tools {
	
  maven "M2"
  jdk "jdk8"
  

}

stages {
stage("Cloning from git") {
   steps {
   git credentialsId: '53f02659-deaa-4a6a-aafb-4845df49a289', url: 'https://github.com/balkies/123-java-webapp-maven.git'
   echo "am cloning from git"
    }


}
stage("Build using maven") {
    steps {
    echo "am building using maven"
	bat(/"%maven%\bin\mvn" -Dmaven.test.failure.ignore clean package/)
    }
}

stage("Results") {
    steps {
    echo "this is test stage"
	archiveArtifacts 'target/*.war'
    }
}
}
}
