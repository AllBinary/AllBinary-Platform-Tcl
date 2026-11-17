# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.canvas

oo::class create ::GameGlobalsFactory {
    superclass ::JObject
}

oo::define ::GameGlobalsFactory {
    method initFields_GameGlobalsFactory {} {
        my jset newCanvas false
        my jset newDisplaybleTime 0
        my jset point {}
        my jset newCanvas true
        my jset newDisplaybleTime [::Integer::staticGet_MIN_VALUE]
        my jset point [[::PointFactory::getInstance] jget ZERO_ZERO]
        return
    }

    constructor {} {
        next
        my initFields_GameGlobalsFactory
    }
    
}

namespace eval ::GameGlobalsFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameGlobalsFactory new]
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
        return [::GameGlobalsFactory::staticGet_instance]
    }
}


