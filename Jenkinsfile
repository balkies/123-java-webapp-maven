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
}
}
