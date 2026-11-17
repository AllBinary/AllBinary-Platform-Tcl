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
# package org.allbinary.logic.util.event

oo::class create ::EventStrings {
    superclass ::JObject
}

oo::define ::EventStrings {
    method initFields_EventStrings {} {
        my jset PERFORMANCE_MESSAGE {}
        my jset TOTAL_LISTENERS {}
        my jset LISTENER_LABEL {}
        my jset FIRE_EVENT {}
        my jset PERFORMANCE_MESSAGE "Use Custom onEvent Methods for needed optimization"
        my jset TOTAL_LISTENERS "Total Listeners: "
        my jset LISTENER_LABEL " Listener: "
        my jset FIRE_EVENT "fireEvent"
        return
    }

    constructor {} {
        next
        my initFields_EventStrings
    }
    
}

namespace eval ::EventStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::EventStrings new]
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
        return [::EventStrings::staticGet_instance]
    }
}


