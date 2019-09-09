pipeline {

agent { label 'buildagent1' }

tools {
	
  maven "M2_HOME"
  jdk "jdk8"

}

	stages {
		stage("Build using maven") {
			steps {
			echo "Am building using maven"
				sh '"/usr/bin/mvn" -Dmaven.test.failure.ignore clean package'
			}
		}

		stage("Results") {
			steps {
			echo "This is achiving stage"
			archiveArtifacts 'target/*.war'	
			}
		}
			stage("Deploy") {
			steps {
			echo "this is Deploy Stage"
			//deploy adapters: [tomcat8(credentialsId: '5f6586f0-ddf2-4684-99b9-17d638343caa', path: '', url: 'http://localhost:8080/')], contextPath: null, war: '**/*.war'
			deploy adapters: [tomcat8(credentialsId: '5f6586f0-ddf2-4684-99b9-17d638343caa', path: '', url: 'http://192.168.222.129:8080/')], contextPath: null, war: '**/*.war'
			}
		}
	}
}
