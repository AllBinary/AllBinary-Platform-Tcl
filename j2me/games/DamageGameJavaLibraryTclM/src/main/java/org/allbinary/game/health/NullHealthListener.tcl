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
# package org.allbinary.game.health

oo::class create ::NullHealthListener {
    superclass ::JObject
}

oo::define ::NullHealthListener {
    method initFields_NullHealthListener {} {
        return
    }

    constructor {} {
        next
        my initFields_NullHealthListener
    }
    

    method onHealthChange {} {
    }
}

namespace eval ::NullHealthListener {
    variable NULL_HEALTH_LISTENERValue {}
    variable NULL_HEALTH_LISTENERSet 0
    proc staticGet_NULL_HEALTH_LISTENER {} {
        variable NULL_HEALTH_LISTENERValue
        variable NULL_HEALTH_LISTENERSet
        if {!$NULL_HEALTH_LISTENERSet} {
            set NULL_HEALTH_LISTENERSet 1
            set NULL_HEALTH_LISTENERValue [::NullHealthListener new]
        }
        return $NULL_HEALTH_LISTENERValue
    }
    proc staticSet_NULL_HEALTH_LISTENER {value} {
        variable NULL_HEALTH_LISTENERValue
        variable NULL_HEALTH_LISTENERSet
        set NULL_HEALTH_LISTENERSet 1
        set NULL_HEALTH_LISTENERValue $value
    }
}


