pipeline {
    agent any
    options { disableConcurrentBuilds() }

    stages {
        stage('Config ') {
            steps {
                sh '''
                    grep ' image:' $compose_cfg || echo "missing key 'service.image' in ${compose_cfg}"
                    grep ' container_name:' $compose_cfg || echo "missing key 'service.container_name' in ${compose_cfg}"
                '''
            }
        }
        stage('Build') {
            steps {
                sh '''#!/bin/bash -e
                    docker-compose build
                '''
            }
        }
        stage('Push') {
            steps {
                sh '''#!/bin/bash -e
                    docker-compose push
                '''
            }
        }
    }
}
