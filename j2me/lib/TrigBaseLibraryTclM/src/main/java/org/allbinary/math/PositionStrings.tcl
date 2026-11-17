#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.math

oo::class create ::PositionStrings {
    superclass ::JObject
}

oo::define ::PositionStrings {
    method initFields_PositionStrings {} {
        my jset X {}
        my jset Y {}
        my jset X_LABEL {}
        my jset Y_LABEL {}
        my jset Z_LABEL {}
        my jset DX_LABEL {}
        my jset DY_LABEL {}
        my jset DZ_LABEL {}
        my jset X "x"
        my jset Y "y"
        my jset X_LABEL "x: "
        my jset Y_LABEL "y: "
        my jset Z_LABEL "z: "
        my jset DX_LABEL "dx: "
        my jset DY_LABEL "dy: "
        my jset DZ_LABEL "dz: "
        return
    }

    constructor {} {
        next
        my initFields_PositionStrings
    }
    
}

namespace eval ::PositionStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PositionStrings new]
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
        return [::PositionStrings::staticGet_instance]
    }
}


