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
# package org.allbinary.thread

oo::class create ::ThreadPoolStrings {
    superclass ::JObject
}

oo::define ::ThreadPoolStrings {
    method initFields_ThreadPoolStrings {} {
        my jset ADD_TASK {}
        my jset START_TASK {}
        my jset COMPLETE_TASK {}
        my jset ADD_TASK "addTask"
        my jset START_TASK "Started Task: "
        my jset COMPLETE_TASK "Completed Task: "
        return
    }

    constructor {} {
        next
        my initFields_ThreadPoolStrings
    }
    
}

namespace eval ::ThreadPoolStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ThreadPoolStrings new]
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
        return [::ThreadPoolStrings::staticGet_instance]
    }
}


