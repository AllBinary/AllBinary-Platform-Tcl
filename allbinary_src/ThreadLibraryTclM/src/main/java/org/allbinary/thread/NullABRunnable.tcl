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
# package org.allbinary.thread

oo::class create ::NullABRunnable {
    superclass ::ABRunnable
}

oo::define ::NullABRunnable {
    method initFields_NullABRunnable {} {
        return
    }

    constructor {} {
        next
        my initFields_NullABRunnable
    }
    
    

    method isRunning {} {
        return false
    }
}

namespace eval ::NullABRunnable {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NullABRunnable new]
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
        return [::NullABRunnable::staticGet_instance]
    }
}


