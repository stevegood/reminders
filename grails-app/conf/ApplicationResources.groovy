modules = {
    foundation {
        dependsOn 'jquery,normalize'
        resource url: 'css/foundation.min.css'
        resource url: 'js/foundation.min.js'
    }

    modernizr {
        resource url: 'js/vendor/modernizr.js', disposition: 'head'
    }

    normalize {
        resource url: 'css/normalize.css'
    }
}
