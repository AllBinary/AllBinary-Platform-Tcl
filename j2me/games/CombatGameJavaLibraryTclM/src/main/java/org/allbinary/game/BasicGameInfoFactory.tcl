# Generated Code Do Not Modify
# package org.allbinary.game

oo::class create ::BasicGameInfoFactory {
    superclass ::JObject
}

oo::define ::BasicGameInfoFactory {
    method initFields_BasicGameInfoFactory {} {
        my jset currentReleaseIndex 0
        my jset currentDestroyIndex 0
        my jset total 0
        my jset currentReleaseIndex 0
        my jset currentDestroyIndex 0
        my jset total 0
        return
    }
    
    

    constructor {} {
        next
        my initFields_BasicGameInfoFactory
    }
    

    method init {total} {
        my jset currentReleaseIndex 0
        my jset currentDestroyIndex 0
        my jset total $total
    }
    

    method isPeaked {} {
        if {[expr {[my jget currentDestroyIndex] >= [my jget total]}]} {
            return true
        } else {
            return false
        }
    }
    

    method howManyLeft {} {
        return [jint [expr {[my jget total] - [my jget currentDestroyIndex]}]]
    }
}

namespace eval ::BasicGameInfoFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::BasicGameInfoFactory new]
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
        return [::BasicGameInfoFactory::staticGet_SINGLETON]
    }
}


