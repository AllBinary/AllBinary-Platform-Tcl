# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

#J2MEForJ2ME
oo::class create ::NullDisplayable {
    superclass ::Canvas
}

oo::define ::NullDisplayable {
    method initFields_NullDisplayable {} {
        my jset baseGameStatistics {}
        my jset baseGameStatistics [::GameStatisticsFactory::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_NullDisplayable
    }
    

    method paint {graphics} {
        [my jget baseGameStatistics] nextRefresh
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


