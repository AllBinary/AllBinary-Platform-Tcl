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
# package org.allbinary.vector

oo::class create ::PointsUtil {
    superclass ::JObject
}

oo::define ::PointsUtil {
    method initFields_PointsUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_PointsUtil
    }
    
    

    method adjustXY {points x y} {
        set size [$points length]
        set newPoints [jarrayof $size {jarrayof 0 {jarray 0 0}}]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set size2 [[$points get $index] length]
            $newPoints set $index [jarrayof $size2 {jarray 2 0}]
            for {set index2 0} {[expr {$index2 < $size2}]} {jpostincr index2 1} {
                if {[expr {[[[$points get $index] get $index2] get 0] != 1000}]} {
                    [[$newPoints get $index] get $index2] set 0 [expr {[[[$points get $index] get $index2] get 0] + $x}]
                    [[$newPoints get $index] get $index2] set 1 [expr {[[[$points get $index] get $index2] get 1] + $y}]
                } else {
                    [[$newPoints get $index] get $index2] set 0 1000
                    [[$newPoints get $index] get $index2] set 1 1000
                }
            }
        }
        return $newPoints
    }
    

    method adjust {points both} {
        return [my adjust $points $both $both]
    }
    

    method adjust {points x y} {
        set newPoints [jarrayof [$points length] {jarray 2 0}]
        for {set index2 0} {[expr {$index2 < [$points length]}]} {jpostincr index2 1} {
            if {[expr {[[$points get $index2] get 0] != 1000}]} {
                [$newPoints get $index2] set 0 [expr {[[$points get $index2] get 0] + $x}]
                [$newPoints get $index2] set 1 [expr {[[$points get $index2] get 1] + $y}]
            } else {
                [$newPoints get $index2] set 0 1000
                [$newPoints get $index2] set 1 1000
            }
        }
        return $newPoints
    }
}

namespace eval ::PointsUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PointsUtil new]
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
        return [::PointsUtil::staticGet_instance]
    }
}


