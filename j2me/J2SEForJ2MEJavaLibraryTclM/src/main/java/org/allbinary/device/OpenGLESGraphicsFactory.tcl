# Generated Code Do Not Modify
# package org.allbinary.device

oo::class create ::OpenGLESGraphicsFactory {
    superclass ::JObject
}

oo::define ::OpenGLESGraphicsFactory {
    method initFields_OpenGLESGraphicsFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLESGraphicsFactory
    }
    

    method getOpenGLESGraphicsInstance {} {
        return [::OpenGLESNullGraphicsFactory::getInstance]
    }
}

namespace eval ::OpenGLESGraphicsFactory {
}


