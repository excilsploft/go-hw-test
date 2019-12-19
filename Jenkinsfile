
node {
  git 'https://github.com/excilsploft/go-hw-test.git'
  def myEnv = docker.build 'gotest:latest'
  myEnv.inside {
    sh 'make build'
  }
}

