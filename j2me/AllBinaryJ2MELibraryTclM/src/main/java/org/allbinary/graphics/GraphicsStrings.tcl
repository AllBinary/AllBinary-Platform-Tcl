# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics

oo::class create ::GraphicsStrings {
    superclass ::JObject
}

oo::define ::GraphicsStrings {
    method initFields_GraphicsStrings {} {
        my jset ANIMATION {}
        my jset ANGLE {}
        my jset MOVEMENT_ANGLE {}
        my jset ROTATION {}
        my jset OPACITY {}
        my jset HTML {}
        my jset WIDTH {}
        my jset HEIGHT {}
        my jset ANIMATION "animation"
        my jset ANGLE "angle"
        my jset MOVEMENT_ANGLE "movement_angle"
        my jset ROTATION "rotation"
        my jset OPACITY "opacity"
        my jset HTML "HTML"
        my jset WIDTH "width"
        my jset HEIGHT "height"
        return
    }

    constructor {} {
        next
        my initFields_GraphicsStrings
    }
    
}

namespace eval ::GraphicsStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GraphicsStrings new]
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
        return [::GraphicsStrings::staticGet_instance]
    }
}


