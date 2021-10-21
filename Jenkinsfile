node {

    checkout scm

    docker.withRegistry('https://hub.docker.com/repository', 'dockerhub') {

        def customImage = docker.build("hello_world_app")

        customImage.push()
    }
}
