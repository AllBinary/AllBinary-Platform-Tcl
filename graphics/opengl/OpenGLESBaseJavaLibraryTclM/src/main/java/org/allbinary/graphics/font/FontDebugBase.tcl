# Generated Code Do Not Modify
# package org.allbinary.graphics.font

#OpenGLESBaseJavaLibrary
oo::class create ::FontDebugBase {
    superclass ::JObject
}

oo::define ::FontDebugBase {
    method initFields_FontDebugBase {} {
        my jset SET_FONT {}
        my jset SET_FONT "setFont"
        return
    }

    constructor {} {
        next
        my initFields_FontDebugBase
    }
    
    

    method debugMetrics {currentFont convertedTextSize displayMetrics stringBuffer} {
    }
    

    method debugDpi {densityDpi stringBuffer} {
    }
    

    method debugDimension {currentFont convertedTextSize longestDimensionTotalPixels stringBuffer} {
    }
}

namespace eval ::FontDebugBase {
    variable instanceBaseValue {}
    variable instanceBaseSet 0
    proc staticGet_instanceBase {} {
        variable instanceBaseValue
        variable instanceBaseSet
        if {!$instanceBaseSet} {
            set instanceBaseSet 1
            set instanceBaseValue [::FontDebugBase new]
        }
        return $instanceBaseValue
    }
    proc staticSet_instanceBase {value} {
        variable instanceBaseValue
        variable instanceBaseSet
        set instanceBaseSet 1
        set instanceBaseValue $value
    }
    proc getInstance {} {
        return [::FontDebugBase::staticGet_instanceBase]
    }
}


