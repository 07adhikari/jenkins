node {

    checkout scm

    docker.withRegistry('surajadhikar/my_custom_images', 'dockerhub') {

        def customImage = docker.build("hello_world_app")

        customImage.push()
    }
}
