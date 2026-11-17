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

oo::class create ::NullThread {
    superclass ::JObject
}

oo::define ::NullThread {
    method initFields_NullThread {} {
        return
    }

    constructor {} {
        next
        my initFields_NullThread
    }
}

namespace eval ::NullThread {
    variable NULL_THREADValue {}
    variable NULL_THREADSet 0
    proc staticGet_NULL_THREAD {} {
        variable NULL_THREADValue
        variable NULL_THREADSet
        if {!$NULL_THREADSet} {
            set NULL_THREADSet 1
            set NULL_THREADValue [::Thread new]
        }
        return $NULL_THREADValue
    }
    proc staticSet_NULL_THREAD {value} {
        variable NULL_THREADValue
        variable NULL_THREADSet
        set NULL_THREADSet 1
        set NULL_THREADValue $value
    }
}


