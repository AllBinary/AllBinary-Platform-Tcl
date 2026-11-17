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
# package org.allbinary.util

oo::class create ::CircularIndexUtil {
    superclass ::JObject
}

oo::define ::CircularIndexUtil {
    method initFields_CircularIndexUtil {} {
        my jset index 0
        my jset lastIndex 0
        my jset size 0
        my jset index 0
        my jset lastIndex 0
        my jset size 0
        return
    }
    

    constructor {index size} {
        next
        my initFields_CircularIndexUtil
        my setSize $size
        my setIndex $index
    }
    

    method next {} {
        if {[expr {[my jget index] >= [my jget lastIndex]}]} {
            my jset index 0
        } else {
            my jpostinc index 1
        }
        return [my jget index]
    }
    

    method previous {} {
        if {[expr {[my jget index] < 1}]} {
            my jset index [my jget lastIndex]
        } else {
            my jpostinc index -1
        }
        return [my jget index]
    }
    

    method setIndex {index} {
        if {[expr {$index > [my jget lastIndex]}]} {
            return
        }
        my jset index $index
    }
    

    method getIndex {} {
        return [my jget index]
    }
    
    
    

    method setSize {size} {
        my jset size $size
        my jset lastIndex [jint [expr {$size - 1}]]
        my jset index 0
    }
    

    method getSize {} {
        return [my jget size]
    }
    

    method toString {} {
        return [[[[[[[[::StringMaker new] append [[::CommonLabels::getInstance] jget INDEX_LABEL]] appendint [my jget index]] append "lastIndex: "] appendint [my jget lastIndex]] append "size: "] appendint [my jget size]] toString]
    }
}

namespace eval ::CircularIndexUtil {
    variable NULL_CIRCULAR_INDEX_UTILValue {}
    variable NULL_CIRCULAR_INDEX_UTILSet 0
    proc staticGet_NULL_CIRCULAR_INDEX_UTIL {} {
        variable NULL_CIRCULAR_INDEX_UTILValue
        variable NULL_CIRCULAR_INDEX_UTILSet
        if {!$NULL_CIRCULAR_INDEX_UTILSet} {
            set NULL_CIRCULAR_INDEX_UTILSet 1
            set NULL_CIRCULAR_INDEX_UTILValue [::CircularIndexUtil new 0 0]
        }
        return $NULL_CIRCULAR_INDEX_UTILValue
    }
    proc staticSet_NULL_CIRCULAR_INDEX_UTIL {value} {
        variable NULL_CIRCULAR_INDEX_UTILValue
        variable NULL_CIRCULAR_INDEX_UTILSet
        set NULL_CIRCULAR_INDEX_UTILSet 1
        set NULL_CIRCULAR_INDEX_UTILValue $value
    }
    proc createInstance {max} {
        return [::CircularIndexUtil new 0 $max]
    }
    proc createInstanceAt {index max} {
        return [::CircularIndexUtil new $index $max]
    }
}


