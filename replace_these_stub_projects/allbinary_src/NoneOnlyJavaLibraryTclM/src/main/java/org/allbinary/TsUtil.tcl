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

#None - Do not use
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
    
    

    method hashCode1 {anyType} {
        return [$anyType hashCode]
    }
    

    method waitFor {any timeoutMillis} {
        set anyType $any
        $anyType wait $timeoutMillis
    }
    

    method getRecord {anyType recordId} {
        return [jarray 0 0]
    }
    

    method compareTo {a b} {
        return [jcompareto $a $b]
    }
    

    method equalIgnoreCase {a b} {
        return [jequalsignorecase $a $b]
    }
    

    method equalsNotstring {anyType object2} {
        return [$anyType equals $object2]
    }
    

    method toNumberFromChar {value} {
        return [jint $value]
    }
    

    method toNumber {value} {
        return $value
    }
    

    method getByteArray {string} {
        return [jgetbytes $string]
    }
    

    method isItemListener {owner} {
        return false
    }
    

    method printAvailableMethods {anyType} {
    }
    

    method gc {} {
        ::System::gc
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


