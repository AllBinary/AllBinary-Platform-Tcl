# Generated Code Do Not Modify
# package org.allbinary.device

oo::class create ::OpenGLESNullGraphicsFactory {
    superclass ::JObject
}

oo::define ::OpenGLESNullGraphicsFactory {
    method initFields_OpenGLESNullGraphicsFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLESNullGraphicsFactory
    }
    
}

namespace eval ::OpenGLESNullGraphicsFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLESGraphics new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::OpenGLESNullGraphicsFactory::staticGet_instance]
    }
}


