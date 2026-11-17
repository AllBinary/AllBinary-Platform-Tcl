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
# package org.allbinary.animation.compound

oo::class create ::CompoundRotationAnimation {
    superclass ::RotationAnimation
}

oo::define ::CompoundRotationAnimation {
    method initFields_CompoundRotationAnimation {} {
        my jset animationInterfaceArray {}
        
        return
    }
    

    constructor {animationInterfaceArray animationBehavior} {
        next [::AngleInfo::getInstance [[::AngleFactory::getInstance] jget QUARTER_TOTAL_ANGLE]] [::CircularIndexUtil::createInstance 4] $animationBehavior
        my initFields_CompoundRotationAnimation
        my jset animationInterfaceArray $animationInterfaceArray
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [[my jget animationInterfaceArray] length]]
    }
    

    method setFrame {index} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] setFrame $index
    }
    

    method getFrame {} {
        return [[[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] getFrame]
    }
    

    method getAnimationSize {} {
        return [[[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] getAnimationSize]
    }
    

    method getSize {} {
        return [[[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] getSize]
    }
    

    method previousFrame {} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] previousFrame
    }
    

    method nextFrame {} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] nextFrame
    }
    

    method previousRotation {} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] previousRotation
    }
    

    method nextRotation {} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] nextRotation
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method paintXY {graphics x y} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] paintXY $graphics $x $y
    }
    

    method paintThreedXYZ {graphics x y z} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] paintThreedXYZ $graphics $x $y $z
    }
    

    method getCurrentAnimation {} {
        return [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]]
    }
    

    method nextAnimation {} {
        set frame [my getFrame]
        [my jget circularIndexUtil] next
        my setFrame $frame
    }
    

    method previousAnimation {} {
        set frame [my getFrame]
        [my jget circularIndexUtil] previous
        my setFrame $frame
    }
    

    method setAnimation {index} {
        set frame [my getFrame]
        [my jget circularIndexUtil] setIndex $index
        my setFrame $frame
    }
    

    method setFrameByDirection {direction} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] setFrameByDirection $direction
    }
    

    method setFrameToAngle {angle} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] setFrameToAngle $angle
    }
    

    method adjustFrameToAngle {newAngle} {
        my adjustFrame [$newAngle getValue]
    }
    

    method adjustFrame {angle} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] adjustFrame $angle
    }
    

    method getAngleInfoP {} {
        return [[[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] getAngleInfoP]
    }
    

    method getAnimationInterfaceArray {} {
        return [my jget animationInterfaceArray]
    }
    

    method setAnimationInterfaceArray {animationInterfaceArray} {
        my jset animationInterfaceArray $animationInterfaceArray
    }
    

    method set {gl} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] set $gl
        }
    }
}

namespace eval ::CompoundRotationAnimation {
}


