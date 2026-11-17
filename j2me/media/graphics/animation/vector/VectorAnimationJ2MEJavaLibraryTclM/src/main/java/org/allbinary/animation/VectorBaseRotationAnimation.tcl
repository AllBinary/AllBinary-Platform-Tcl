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

oo::class create ::VectorBaseRotationAnimation {
    superclass ::RotationAnimation
}

oo::define ::VectorBaseRotationAnimation {
    method initFields_VectorBaseRotationAnimation {} {
        my jset currentPoints {}
        my jset currentPoints [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY_ARRAY]
        return
    }
    

    constructor {angleInfo currentPoints basicColor animationBehavior} {
        next $angleInfo [::CircularIndexUtil::createInstance [expr {360 / [[$angleInfo getAngleIncrementInfo] getAngleIncrement]}]] $animationBehavior
        my initFields_VectorBaseRotationAnimation
        my setPoints $currentPoints
        my setBasicColorP $basicColor
    }
    

    method getAnimationSize {} {
        return [my getSize]
    }
    

    method getFrame {} {
        return [[my jget circularIndexUtil] getIndex]
    }
    

    method setFrame {index} {
        [my jget circularIndexUtil] setIndex $index
    }
    

    method nextFrame {} {
        [my jget circularIndexUtil] next
    }
    

    method previousFrame {} {
        [my jget circularIndexUtil] previous
    }
    

    method getSize {} {
        return [[my jget currentPoints] length]
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method paintXY {graphics x y} {
        [my jget basicSetColorUtil] setBasicColorP $graphics [my jget basicColor]
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
    

    method getPoints {frame} {
        return [[my jget currentPoints] get $frame]
    }
    

    method setPoints {currentPoints} {
        my jset currentPoints $currentPoints
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [[my jget currentPoints] length]]
    }
    

    method getBasicColorP {} {
        return [next]
    }
    

    method setBasicColorP {basicColor} {
        next $basicColor
    }
}

namespace eval ::VectorBaseRotationAnimation {
}


