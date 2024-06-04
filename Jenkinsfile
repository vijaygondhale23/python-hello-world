pipeline {
    agent any

    stages {
        stage('Prepare') {
            steps {
                echo "Starting the python pipeline"
 		python3 hello-world.py
            }
        }
        stage('Build') {
            steps {
                echo "List the current/available docker images"
		docker images
		echo "Removing the my-python-app image"
		docker rmi -f my-python-app
		echo "Building the docker image"
		docker build -t my-python-app .
		echo "List the current/available docker images"
		docker images
		echo "Running the my-python-app container"
		docker run my-python-app
		echo "List all the contianer"
		docker ps -a
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
