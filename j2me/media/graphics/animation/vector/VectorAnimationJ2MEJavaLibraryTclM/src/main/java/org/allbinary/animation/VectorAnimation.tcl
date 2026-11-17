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

oo::class create ::VectorAnimation {
    superclass ::IndexedAnimation
}

oo::define ::VectorAnimation {
    method initFields_VectorAnimation {} {
        my jset currentPoints {}
        my jset circularIndexUtil {}
        my jset currentPoints [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY_ARRAY]
        my jset circularIndexUtil [::CircularIndexUtil::createInstance 0]
        return
    }
    
    

    constructor {currentPoints basicColor animationBehavior} {
        next $animationBehavior
        my initFields_VectorAnimation
        my setPoints $currentPoints
        my setBasicColorP $basicColor
    }
    

    method setBasicColorP {basicColor} {
        set changed false
        if {[expr {[expr {[my getBasicColorP] eq {}}] || [expr {[[my getBasicColorP] intValue] != [$basicColor intValue]}]}]} {
            set changed true
        }
        next $basicColor
        if {$changed} {
            my updateModifiers
        }
    }
    

    method changeBasicColor {basicColor} {
        set changed false
        if {[expr {[expr {[my getChangeBasicColor] eq {}}] || [expr {[[my getChangeBasicColor] intValue] != [$basicColor intValue]}]}]} {
            set changed true
        }
        next $basicColor
        if {$changed} {
            my updateModifiers
        }
    }
    

    method setAlpha {alpha} {
        set changed false
        if {[expr {[my jget alphaP] != $alpha}]} {
            set changed true
        }
        next $alpha
        if {$changed} {
            my updateModifiers
        }
    }
    

    method setScale {scaleX scaleY} {
    }
    

    method setMaxScale {maxScaleX maxScaleY} {
    }
    

    method updateModifiers {} {
    }
    

    method getAnimationSize {} {
        return [my getSize]
    }
    

    method getSize {} {
        return [[my jget currentPoints] length]
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method nextFrame {} {
        [my jget circularIndexUtil] next
    }
    

    method previousFrame {} {
        [my jget circularIndexUtil] previous
    }
    

    method paintVectors {graphics x y} {
        try {
            set nextPointX 0
            set nextPointY 0
            set nextPoint {}
            set point {}
            set currentPointsFrame [[my jget currentPoints] get [[my jget circularIndexUtil] getIndex]]
            set size [$currentPointsFrame length]
            set index [jint [expr {$size - 2}]]
            while {[expr {[jpreincr index -1] >= 0}]} {
                set nextPoint [$currentPointsFrame get $index]
                set point [$currentPointsFrame get [jint [expr {$index + 1}]]]
                set nextPointX [$nextPoint get 0]
                set nextPointY [$nextPoint get 1]
                if {[expr {$nextPointX != 1000}]} {
                    $graphics drawLine [jint [expr {[$point get 0] + $x}]] [jint [expr {[$point get 1] + $y}]] [jint [expr {$nextPointX + $x}]] [jint [expr {$nextPointY + $y}]]
                } else {
                    jpostincr index -1
                }
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "paintVectors" $e
        }
    }
    

    method paintXY {graphics x y} {
        [my jget basicSetColorUtil] setBasicColorP $graphics [my jget basicColor]
        my paintVectors $graphics $x $y
    }
    

    method getFrame {} {
        return [[my jget circularIndexUtil] getIndex]
    }
    

    method setFrame {index} {
        [my jget circularIndexUtil] setIndex $index
    }
    

    method getPoints {frame} {
        return [[my jget currentPoints] get $frame]
    }
    

    method setPoints {currentPoints} {
        my jset currentPoints $currentPoints
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [$currentPoints length]]
    }
    

    method getBasicColorP {} {
        return [next]
    }
}

namespace eval ::VectorAnimation {
    proc createVectorAnimation {currentPoints2 basicColor animationBehavior} {
        set currentPoints [jarrayof 1 {jarrayof [$currentPoints2 length] {jarray 2 0}}]
        set size [$currentPoints2 length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [[$currentPoints get 0] get $index] set 0 [[$currentPoints2 get $index] get 0]
            [[$currentPoints get 0] get $index] set 1 [[$currentPoints2 get $index] get 1]
        }
        return [::VectorAnimation new $currentPoints $basicColor $animationBehavior]
    }
}


