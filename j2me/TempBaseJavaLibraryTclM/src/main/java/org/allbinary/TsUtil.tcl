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
# package org.allbinary

#TempBase
oo::class create ::TsUtil {
    superclass ::JObject
}

oo::define ::TsUtil {
    method initFields_TsUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_TsUtil
    }
    
    

    method longBitsToDouble {bits} {
        return [Double longBitsToDouble $bits]
    }
    

    method intBitsToFloat {bits} {
        return [Float intBitsToFloat $bits]
    }
    

    method hashCode1 {anyType} {
        return [$anyType hashCode]
    }
    

    method waitFor {any timeoutMillis} {
        set anyType $any
        $anyType wait $timeoutMillis
    }
    

    method compareTo {a b} {
        return [jcompareto $a $b]
    }
}

namespace eval ::TsUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TsUtil new]
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
        return [::TsUtil::staticGet_instance]
    }
}


