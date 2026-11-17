# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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

oo::class create ::VectorUtil {
    superclass ::JObject
}

oo::define ::VectorUtil {
    method initFields_VectorUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_VectorUtil
    }
    
    

    method getSize {anyType} {
        set vector $anyType
        return [$vector size]
    }
    

    method elementAt {anyType index} {
        set vector $anyType
        return [$vector elementAt $index]
    }
}

namespace eval ::VectorUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::VectorUtil new]
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
        return [::VectorUtil::staticGet_instance]
    }
}


