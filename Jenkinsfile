pipeline {
    agent any

    stages {
        stage('Validar repositorio') {
            steps {
                echo 'Repositorio disponible para validacion.'
            }
        }

        stage('Construir contenedores Docker') {
            steps {
                sh 'docker compose build'
            }
        }

        stage('Iniciar ambiente Docker') {
            steps {
                sh 'docker compose up -d'
                sh 'docker compose ps'
            }
        }

        stage('Validar comunicacion') {
            steps {
                sh 'docker compose exec -T cliente-pruebas validar_comunicacion.sh'
            }
        }
    }

    post {
        success {
            echo 'Validacion finalizada correctamente.'
        }
        failure {
            echo 'Validacion fallida. Revisar la salida de consola.'
        }
    }
}
