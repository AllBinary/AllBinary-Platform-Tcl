# Generated Code Do Not Modify
# package org.allbinary.graphics.form

oo::class create ::ScreenInfo {
    superclass ::JObject
}

oo::define ::ScreenInfo {
    method initFields_ScreenInfo {} {
        my jset SMALL_WIDTH 0
        my jset SMALL_HEIGHT 0
        my jset MEDIUM_WIDTH 0
        my jset MEDIUM_HEIGHT 0
        my jset SMALL_WIDTH 320
        my jset SMALL_HEIGHT 240
        my jset MEDIUM_WIDTH 800
        my jset MEDIUM_HEIGHT 600
        return
    }

    constructor {} {
        next
        my initFields_ScreenInfo
    }
    
}

namespace eval ::ScreenInfo {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ScreenInfo new]
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
        return [::ScreenInfo::staticGet_instance]
    }
}


