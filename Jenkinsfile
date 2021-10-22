node {

    checkout scm

    docker.withRegistry('https://hub.docker.com/repository/docker/surajadhikar/my_custom_images', 'dockerhub') {

        def customImage = docker.build("surajadhikar/my_custom_images")

        customImage.push()
    }
}
