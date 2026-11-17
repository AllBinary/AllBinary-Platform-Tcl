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
# package org.allbinary.logic.io.path

oo::class create ::AbPathUtil {
    superclass ::JObject
}

oo::define ::AbPathUtil {
    method initFields_AbPathUtil {} {
        my jset NO_ABPATH {}
        my jset NO_ABPATH [::AbPath::createAbPath]
        return
    }

    constructor {} {
        next
        my initFields_AbPathUtil
    }
    
}

namespace eval ::AbPathUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AbPathUtil new]
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
        return [::AbPathUtil::staticGet_instance]
    }
}


