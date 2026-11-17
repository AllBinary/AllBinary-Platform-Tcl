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
# package org.allbinary.animation

oo::class create ::VectorAnimationUtil {
    superclass ::JObject
}

oo::define ::VectorAnimationUtil {
    method initFields_VectorAnimationUtil {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_VectorAnimationUtil
    }
    

    method toAnimationArrayFromListOfPointListWithPointsPerFrame {vector pointsPerFrame} {
        set size [$vector size]
        set points [jarrayof $size {jarrayof $pointsPerFrame {jarray 2 0}}]
        set nextBasicArrayList {}
        set framePoints {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set nextBasicArrayList [[$vector jget objectArray] get $index]
            set framePoints [my toFrameArrayFromPointBasicArrayList $nextBasicArrayList]
            for {set pointIndex 0} {[expr {$pointIndex < [$framePoints length]}]} {jpostincr pointIndex 1} {
                [[$points get $index] get $pointIndex] set 0 [[$framePoints get $pointIndex] get 0]
                [[$points get $index] get $pointIndex] set 1 [[$framePoints get $pointIndex] get 1]
            }
        }
        return $points
    }
    

    method toAnimationArrayFromListOfPointList {vector} {
        set size [$vector size]
        set points [jarrayof $size {jarrayof 0 {jarray 0 0}}]
        set nextBasicArrayList {}
        set framePoints {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set nextBasicArrayList [[$vector jget objectArray] get $index]
            set framePoints [my toFrameArrayFromPointBasicArrayList $nextBasicArrayList]
            $points set $index [jarrayof [$framePoints length] {jarray 2 0}]
            for {set pointIndex 0} {[expr {$pointIndex < [$framePoints length]}]} {jpostincr pointIndex 1} {
                [[$points get $index] get $pointIndex] set 0 [[$framePoints get $pointIndex] get 0]
                [[$points get $index] get $pointIndex] set 1 [[$framePoints get $pointIndex] get 1]
            }
        }
        return $points
    }
    

    method toFrameArrayFromPointBasicArrayList {list} {
        set points [jarrayof [$list size] {jarray 2 0}]
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set nextPoint [[$list jget objectArray] get $index]
            [$points get $index] set 0 [$nextPoint getX]
            [$points get $index] set 1 [$nextPoint getY]
        }
        return $points
    }
}

namespace eval ::VectorAnimationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::VectorAnimationUtil new]
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
        return [::VectorAnimationUtil::staticGet_instance]
    }
}


