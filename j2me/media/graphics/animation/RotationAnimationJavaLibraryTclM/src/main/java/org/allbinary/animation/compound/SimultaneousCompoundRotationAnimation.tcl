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

oo::class create ::SimultaneousCompoundRotationAnimation {
    superclass ::RotationAnimation
}

oo::define ::SimultaneousCompoundRotationAnimation {
    method initFields_SimultaneousCompoundRotationAnimation {} {
        my jset animationInterfaceArray {}
        
        return
    }
    

    constructor {animationInterfaceArray animationBehavior} {
        next [::AngleInfo::getInstance [[::AngleFactory::getInstance] jget QUARTER_TOTAL_ANGLE]] [::CircularIndexUtil::createInstance 4] $animationBehavior
        my initFields_SimultaneousCompoundRotationAnimation
        my jset animationInterfaceArray $animationInterfaceArray
    }
    

    method setFrame {frameIndex} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] setFrame $frameIndex
        }
    }
    

    method getFrame {} {
        return [[[my jget animationInterfaceArray] get 0] getFrame]
    }
    

    method getAnimationSize {} {
        return [[[my jget animationInterfaceArray] get 0] getAnimationSize]
    }
    

    method getSize {} {
        return [[[my jget animationInterfaceArray] get 0] getSize]
    }
    

    method previousFrame {} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] previousFrame
        }
    }
    

    method nextFrame {} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] nextFrame
        }
    }
    

    method previousRotation {} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] previousRotation
        }
    }
    

    method nextRotation {} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] nextRotation
        }
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method paintXY {graphics x y} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] paintXY $graphics $x $y
        }
    }
    

    method paintThreedXYZ {graphics x y z} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] paintThreedXYZ $graphics $x $y $z
        }
    }
    

    method setFrameByDirection {direction} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] setFrameByDirection $direction
        }
    }
    

    method setFrameToAngle {angle} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] setFrameToAngle $angle
        }
    }
    

    method adjustFrameToAngle {newAngle} {
        my adjustFrame [$newAngle getValue]
    }
    

    method adjustFrame {angle} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] adjustFrame $angle
        }
    }
    

    method getAngleInfoP {} {
        return [[[my jget animationInterfaceArray] get 0] getAngleInfoP]
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

namespace eval ::SimultaneousCompoundRotationAnimation {
}


