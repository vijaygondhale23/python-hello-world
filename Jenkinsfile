pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Starting the python pipeline"
 		sh 'python3 hello-world.py'
            }
        }
        stage('Docker Build') {
            steps {
                echo "List the current/available docker images"
		sh 'docker images'
		echo "Removing the my-python-app image"
		sh 'docker rmi -f my-python-app'
		echo "Building the docker image"
		sh 'docker build -t my-python-app .'
		echo "List the current/available docker images"
		sh 'docker images'
		echo "Running the my-python-app container"
		sh 'docker run -d my-python-app'
		echo "List all the contianer"
		sh 'docker ps -a'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
