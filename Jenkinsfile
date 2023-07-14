// create jenkinsfile as follows
// create environment variables mavenHome and dockerHome from configured tools in jenkins
// create pipeline job in jenkins and configure it to use jenkinsfile from SCM
// Add stages compile, test and package using maven tool
// Add stage build image using docker tool
// Add stage push image using docker tool

pipeline {
    agent any
    environment {
        dockerHome = tool 'myDocker'
        mavenHome = tool 'myMaven'
        PATH="$PATH:$dockerHome/bin:$mavenHome/bin"
    }

    stages {
        stage('Checkout') {
            steps {
                sh 'mvn --version'
                sh 'docker --version'
                echo 'Building..'
                echo "$PATH"
                echo "$JAVA_HOME"
                echo "$env.JOB_NAME"
                echo "$env.BUILD_NUMBER"
                
            }
        }
        stage('Compile') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        //add stage for building jar file
        stage('Build Jar') {
            steps {
                sh 'mvn package -DskipTests'
            }
        }