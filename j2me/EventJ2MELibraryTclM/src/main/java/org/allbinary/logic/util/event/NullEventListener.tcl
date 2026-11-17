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
# package org.allbinary.logic.util.event

oo::class create ::NullEventListener {
    superclass ::JObject
}

oo::define ::NullEventListener {
    method initFields_NullEventListener {} {
        return
    }

    constructor {} {
        next
        my initFields_NullEventListener
    }
    

    method onEvent {eventObject} {
    }
}

namespace eval ::NullEventListener {
    variable NULL_EVENT_LISTENERValue {}
    variable NULL_EVENT_LISTENERSet 0
    proc staticGet_NULL_EVENT_LISTENER {} {
        variable NULL_EVENT_LISTENERValue
        variable NULL_EVENT_LISTENERSet
        if {!$NULL_EVENT_LISTENERSet} {
            set NULL_EVENT_LISTENERSet 1
            set NULL_EVENT_LISTENERValue [::NullEventListener new]
        }
        return $NULL_EVENT_LISTENERValue
    }
    proc staticSet_NULL_EVENT_LISTENER {value} {
        variable NULL_EVENT_LISTENERValue
        variable NULL_EVENT_LISTENERSet
        set NULL_EVENT_LISTENERSet 1
        set NULL_EVENT_LISTENERValue $value
    }
}


