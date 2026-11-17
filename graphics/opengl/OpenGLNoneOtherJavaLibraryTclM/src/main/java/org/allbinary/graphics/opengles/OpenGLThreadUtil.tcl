# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

oo::class create ::OpenGLThreadUtil {
    superclass ::JObject
}

oo::define ::OpenGLThreadUtil {
    method initFields_OpenGLThreadUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_OpenGLThreadUtil
    }
    
    

    method set {glSurfaceView} {
    }
    

    method onPause {} {
    }
    

    method onResume {} {
    }
}

namespace eval ::OpenGLThreadUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OpenGLThreadUtil new]
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
        return [::OpenGLThreadUtil::staticGet_instance]
    }
}


