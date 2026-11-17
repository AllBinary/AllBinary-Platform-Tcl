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
# package org.allbinary.logic.math

oo::class create ::SmallLongFactory {
    superclass ::JObject
}

oo::define ::SmallLongFactory {
    method initFields_SmallLongFactory {} {
        my jset NEGATIVE_MAX 0
        my jset POSITIVE_MAX 0
        my jset INTEGER_ARRAY {}
        my jset STRING_ARRAY {}
        my jset MIN 0
        my jset lastMin 0
        my jset lastNegativeMin 0
        my jset NEGATIVE_MAX 500
        my jset POSITIVE_MAX 0x2D1
        my jset INTEGER_ARRAY [jarray [jint [expr {[my jget NEGATIVE_MAX] + [my jget POSITIVE_MAX]}]] {}]
        my jset STRING_ARRAY [jarray [jint [expr {[my jget NEGATIVE_MAX] + [my jget POSITIVE_MAX]}]] {}]
        my jset MIN 0
        my jset lastMin 0
        my jset lastNegativeMin 0
        return
    }
    
    

    method initWithRange {value negativeValue} {
        for {set index [jint [expr {$value - 1}]]} {[expr {$index >= [my jget lastMin]}]} {jpostincr index -1} {
            [my jget INTEGER_ARRAY] set [jint [expr {$index + [my jget NEGATIVE_MAX]}]] $index
        }
        for {set index [jint [expr {$negativeValue - 1}]]} {[expr {$index >= [my jget lastNegativeMin]}]} {jpostincr index -1} {
            [my jget INTEGER_ARRAY] set $index [expr {-$index}]
        }
        if {[expr {[my jget lastMin] < $value}]} {
            my jset lastMin $value
            my jset MIN $value
        }
        if {[expr {[my jget lastNegativeMin] < $negativeValue}]} {
            my jset lastNegativeMin $negativeValue
        }
    }
    

    method init {} {
        if {[expr {[[my jget INTEGER_ARRAY] get 0] eq {}}]} {
            if {[expr {[expr {[my jget lastMin] < [my jget POSITIVE_MAX]}] || [expr {[my jget lastNegativeMin] < [my jget NEGATIVE_MAX]}]}]} {
                for {set index [jint [expr {[my jget POSITIVE_MAX] - 1}]]} {[expr {$index >= [my jget lastMin]}]} {jpostincr index -1} {
                    [my jget INTEGER_ARRAY] set [jint [expr {$index + [my jget NEGATIVE_MAX]}]] $index
                }
                for {set index [jint [expr {[my jget NEGATIVE_MAX] - 1}]]} {[expr {$index >= [my jget lastNegativeMin]}]} {jpostincr index -1} {
                    [my jget INTEGER_ARRAY] set $index [expr {-$index}]
                }
                my jset lastMin [my jget POSITIVE_MAX]
                my jset lastNegativeMin [my jget NEGATIVE_MAX]
            }
        }
    }
    

    constructor {} {
        next
        my initFields_SmallLongFactory
    }
    

    method getInstanceNoThrow {index} {
        if {[expr {[jlong [expr {$index + [my jget NEGATIVE_MAX]}]] > [jint [expr {[[my jget INTEGER_ARRAY] length] - 1}]]}]} {
            return [[my jget INTEGER_ARRAY] get [jint [expr {[expr {-1}] + [my jget NEGATIVE_MAX]}]]]
        }
        return [[my jget INTEGER_ARRAY] get [jint [expr {([jint $index]) + [my jget NEGATIVE_MAX]}]]]
    }
    

    method getString {index} {
        set i [jint [expr {$index + [my jget NEGATIVE_MAX]}]]
        if {[expr {[[my jget STRING_ARRAY] get $i] eq {}}]} {
            [my jget STRING_ARRAY] set $i [[[my jget INTEGER_ARRAY] get $i] toString]
        }
        return [[my jget STRING_ARRAY] get $i]
    }
}

namespace eval ::SmallLongFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SmallLongFactory new]
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
        return [::SmallLongFactory::staticGet_instance]
    }
}


