# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

oo::class create ::NullOpenGLProcessorFactory {
    superclass ::JObject
}

oo::define ::NullOpenGLProcessorFactory {
    method initFields_NullOpenGLProcessorFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_NullOpenGLProcessorFactory
    }
    
}

namespace eval ::NullOpenGLProcessorFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLProcessor new]
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
        return [::NullOpenGLProcessorFactory::staticGet_instance]
    }
}


