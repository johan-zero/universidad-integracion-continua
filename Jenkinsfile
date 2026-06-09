pipeline {
    agent any

    stages {
        stage('Validar repositorio') {
            steps {
                echo 'Repositorio disponible para validacion.'
                sh 'pwd'
                sh 'ls -la'
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
        always {
            sh 'docker compose down || true'
        }
        success {
            echo 'Pipeline finalizado correctamente. Los contenedores fueron construidos y la comunicacion fue validada.'
        }
        failure {
            echo 'Pipeline fallido. Revisar la salida de consola en Jenkins.'
        }
    }
}
