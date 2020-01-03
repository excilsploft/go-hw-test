node {
	def repo = 'https://github.com/excilsploft/go-hw-test.git'
	def myEnv = docker.build 'gotest:latest'

	stage('Build') {
	  git repo
	  myEnv.inside {
		sh 'make build && make test'
	  }
	}
}
