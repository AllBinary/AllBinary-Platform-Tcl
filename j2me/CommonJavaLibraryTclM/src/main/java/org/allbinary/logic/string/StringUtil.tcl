#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.logic.string

oo::class create ::StringUtil {
    superclass ::JObject
}

oo::define ::StringUtil {
    method initFields_StringUtil {} {
        my jset INIT_STRING {}
        my jset NULL_STRING {}
        my jset EMPTY_STRING {}
        my jset ONE_EMPTY_STRING_ARRAY {}
        my jset ONE_EMPTY_STRING_ARRAY_OF_ARRAYS {}
        my jset stringArray {}
        my jset INIT_STRING ""
        my jset NULL_STRING "null"
        my jset EMPTY_STRING ""
        my jset ONE_EMPTY_STRING_ARRAY [jarrayfrom [list [my jget EMPTY_STRING]]]
        my jset ONE_EMPTY_STRING_ARRAY_OF_ARRAYS [jarrayof 0 {jarray 0 {}}]
        my jset stringArray [jarray 0 {}]
        return
    }
    
    

    constructor {} {
        next
        my initFields_StringUtil
    }
    

    method getNonNull {string} {
        return $string
    }
    

    method getArrayInstance {} {
        return [my jget stringArray]
    }
    

    method count {string aChar} {
        set count 0
        set size [string length $string]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            if {[expr {[scan [string index $string $index] %c] == $aChar}]} {
                jpostincr count 1
            }
        }
        return $count
    }
    

    method toString1 {anyType} {
        if {[expr {$anyType ne {}}]} {
            return [$anyType toString]
        } else {
            return [my jget NULL_STRING]
        }
    }
}

namespace eval ::StringUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::StringUtil new]
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
        return [::StringUtil::staticGet_instance]
    }
}


