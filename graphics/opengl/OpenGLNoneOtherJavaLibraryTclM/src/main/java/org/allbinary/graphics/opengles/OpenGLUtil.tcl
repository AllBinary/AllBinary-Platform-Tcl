# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

oo::class create ::OpenGLUtil {
    superclass ::JObject
}

oo::define ::OpenGLUtil {
    method initFields_OpenGLUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLUtil
    }
    
    

    method addImage {image} {
        return $image
    }
    

    method clear {} {
    }
    

    method addRunnable {runnable} {
    }
}

namespace eval ::OpenGLUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLUtil new]
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
        return [::OpenGLUtil::staticGet_instance]
    }
}


