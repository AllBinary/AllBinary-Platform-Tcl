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
# package org.allbinary.util

#ArkTs does not have this.  So this is for the ArkTs build.
oo::class create ::EnumerationUtil {
    superclass ::JObject
}

oo::define ::EnumerationUtil {
    method initFields_EnumerationUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_EnumerationUtil
    }
    
    

    method hasMoreElements {enumeration} {
        return [$enumeration hasMoreElements]
    }
    

    method nextElement {enumeration} {
        return [$enumeration nextElement]
    }
    

    method getAsArray {enumeration} {
        set basicArrayList [::BasicArrayListD new]
        while {[my hasMoreElements $enumeration]} {
            $basicArrayList add [my nextElement $enumeration]
        }
        return [$basicArrayList toArray]
    }
}

namespace eval ::EnumerationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::EnumerationUtil new]
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
        return [::EnumerationUtil::staticGet_instance]
    }
}


