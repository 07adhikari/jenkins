node {

    checkout scm

    docker.withRegistry('surajadhikar/my_custom_images', 'dockerHub') {

        def customImage = docker.build("hello_world_app")

        customImage.push()
    }
}
