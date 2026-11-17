# Generated Code Do Not Modify
# package org.allbinary.device

oo::class create ::OpenGLESGraphics {
    superclass ::JObject
}

oo::define ::OpenGLESGraphics {
    method initFields_OpenGLESGraphics {} {
        my jset commonStrings {}
        my jset gl {}
        my jset commonStrings [::CommonStrings::getInstance]
        my jset gl [::NullGL10::staticGet_NULL_GL10]
        return
    }
    

    constructor {} {
        next
        my initFields_OpenGLESGraphics
    }
    

    method updateGL {gl} {
    }
    

    method set {gl} {
    }
    

    method init {} {
    }
    

    method update {} {
    }
    

    method setOrthoginalMode {} {
    }
    

    method setCameraMode {} {
    }
    

    method getGlP {} {
        return [my jget gl]
    }
    

    method setFontDebug {font fontDebug} {
        error [jexception RuntimeException {}]
    }
}

namespace eval ::OpenGLESGraphics {
}


