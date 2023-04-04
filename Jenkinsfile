pipeline {
	agent any
	stages {
		stage ('Build') {
			steps {
			sh 'printenv'
			}
	}
	stage ('Publish ECR') {
		steps {
			withEnv (["AWS_ACCESS_KEY_ID=${env.AWS_ACCESS_KEY_ID}","AWS_SECRET_ACCESS_KEY=${env.AWS_SECRET_ACCESS_KEY}", "AWS_DEFAULT_REGION=${env.AWS_DEFAULT_REGION}"]) {
			sh 'docker login -u AWS -p $(aws ecr-public get-login-password --region us-east-1) public.ecr.aws/z7m4k6p8'
			sh 'docker build -t my_ecr_registry .'
			sh 'docker tag my_ecr_registry:BUILD_ID my_ecr_registry:latest'
			sh 'docker push public.ecr.aws/z7m4k6p8/my_ecr_registry:""BUILD_ID""'
				}
			}
		}
	}
}
