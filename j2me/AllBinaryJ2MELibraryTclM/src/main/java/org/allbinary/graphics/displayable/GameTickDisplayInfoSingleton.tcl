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
# package org.allbinary.graphics.displayable

oo::class create ::GameTickDisplayInfoSingleton {
    superclass ::JObject
}

oo::define ::GameTickDisplayInfoSingleton {
    method initFields_GameTickDisplayInfoSingleton {} {
        my jset displayInfoSingleton {}
        my jset lastWidth 0
        my jset lastHeight 0
        my jset lastHalfWidth 0
        my jset lastHalfHeight 0
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        my jset lastWidth [[my jget displayInfoSingleton] getLastWidth]
        my jset lastHeight [[my jget displayInfoSingleton] getLastHeight]
        my jset lastHalfWidth [[my jget displayInfoSingleton] getLastHalfWidth]
        my jset lastHalfHeight [[my jget displayInfoSingleton] getLastHalfHeight]
        return
    }

    constructor {} {
        next
        my initFields_GameTickDisplayInfoSingleton
    }
    
    

    method update {} {
        my jset lastWidth [[my jget displayInfoSingleton] getLastWidth]
        my jset lastHeight [[my jget displayInfoSingleton] getLastHeight]
        my jset lastHalfWidth [[my jget displayInfoSingleton] getLastHalfWidth]
        my jset lastHalfHeight [[my jget displayInfoSingleton] getLastHalfHeight]
    }
    

    method getLastWidth {} {
        return [my jget lastWidth]
    }
    

    method getLastHeight {} {
        return [my jget lastHeight]
    }
    

    method getLastHalfWidth {} {
        return [my jget lastHalfWidth]
    }
    

    method getLastHalfHeight {} {
        return [my jget lastHalfHeight]
    }
}

namespace eval ::GameTickDisplayInfoSingleton {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameTickDisplayInfoSingleton new]
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
        return [::GameTickDisplayInfoSingleton::staticGet_instance]
    }
}


