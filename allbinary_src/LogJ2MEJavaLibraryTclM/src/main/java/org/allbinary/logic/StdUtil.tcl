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
# package org.allbinary.logic

#ActualPlatform
oo::class create ::StdUtil {
    superclass ::JObject
}

oo::define ::StdUtil {
    method initFields_StdUtil {} {
        my jset EMPTY_VECTOR {}
        my jset NULL_TABLE {}
        my jset EMPTY_VECTOR [my createVector]
        my jset NULL_TABLE [my createHashtable]
        return
    }

    constructor {} {
        next
        my initFields_StdUtil
    }
    
    

    method createStack {} {
        return [::ABStack new]
    }
    

    method createVector {} {
        return [::ABVector new]
    }
    

    method createHashtable {} {
        return [::ABHashtable new]
    }
}

namespace eval ::StdUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::StdUtil new]
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
        return [::StdUtil::staticGet_instance]
    }
}


