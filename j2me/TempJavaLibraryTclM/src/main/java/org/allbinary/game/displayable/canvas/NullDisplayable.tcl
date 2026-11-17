# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

#Temp should not be in any build
oo::class create ::NullDisplayable {
    superclass ::Canvas
}

oo::define ::NullDisplayable {
    method initFields_NullDisplayable {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_NullDisplayable
    }
    

    method paint {graphics} {
    }
}

namespace eval ::NullDisplayable {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::NullDisplayable new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::NullDisplayable::staticGet_SINGLETON]
    }
}


