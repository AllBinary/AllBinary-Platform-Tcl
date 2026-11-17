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
# package org.allbinary.graphics.color

oo::class create ::BasicColorUtil {
    superclass ::JObject
}

oo::define ::BasicColorUtil {
    method initFields_BasicColorUtil {} {
        my jset ZERO_ARRAY {}
        my jset ALPHA 0
        my jset isAlpha false
        my jset ffOpaque false
        my jset ZERO_ARRAY [jarray 0 {}]
        my jset ALPHA 0xFF000000
        my jset isAlpha true
        my jset ffOpaque true
        return
    }

    constructor {} {
        next
        my initFields_BasicColorUtil
    }
    
    

    method getRGB {red green blue} {
        set value 0
        if {[my jget isAlpha]} {
            if {[my jget ffOpaque]} {
                set value [my jget ALPHA]
            }
        }
        set value [expr {([jint [expr {$red << 16}]]) | $value}]
        set value [expr {([jint [expr {$green << 8}]]) | $value}]
        set value [expr {$blue | $value}]
        return $value
    }
    

    method getARGB {alphaValue r g b} {
        return [jint [expr {[jint [expr {[jint [expr {([expr {([jint [expr {$alphaValue << 24}]]) & [my jget ALPHA]}]) + ([expr {([jint [expr {$r << 16}]]) & 0x00FF0000}])}]] + ([expr {([jint [expr {$g << 8}]]) & 0x0000FF00}])}]] + ([expr {$b & 0x000000FF}])}]]
    }
    

    method get {alphaValue color} {
        return [jint [expr {([expr {([jint [expr {$alphaValue << 24}]]) & [my jget ALPHA]}]) + $color}]]
    }
    

    method invert {color} {
        return [expr {([jint [expr {0xFFFFFF - $color}]]) | [my jget ALPHA]}]
    }
}

namespace eval ::BasicColorUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::BasicColorUtil new]
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
        return [::BasicColorUtil::staticGet_instance]
    }
}


