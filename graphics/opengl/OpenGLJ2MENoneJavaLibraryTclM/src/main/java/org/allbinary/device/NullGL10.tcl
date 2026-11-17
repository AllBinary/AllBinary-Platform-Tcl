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
# package org.allbinary.device

oo::class create ::NullGL10 {
    superclass ::JObject
}

oo::define ::NullGL10 {
    method initFields_NullGL10 {} {
        return
    }

    constructor {} {
        next
        my initFields_NullGL10
    }
}

namespace eval ::NullGL10 {
    variable NULL_GL10Value {}
    variable NULL_GL10Set 0
    proc staticGet_NULL_GL10 {} {
        variable NULL_GL10Value
        variable NULL_GL10Set
        if {!$NULL_GL10Set} {
            set NULL_GL10Set 1
            set NULL_GL10Value [::NullGL10 new]
        }
        return $NULL_GL10Value
    }
    proc staticSet_NULL_GL10 {value} {
        variable NULL_GL10Value
        variable NULL_GL10Set
        set NULL_GL10Set 1
        set NULL_GL10Value $value
    }
}


