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

oo::class create ::SimultaneousCompoundIndexAnimation {
    superclass ::IndexedAnimation
}

oo::define ::SimultaneousCompoundIndexAnimation {
    method initFields_SimultaneousCompoundIndexAnimation {} {
        my jset animationInterfaceArray {}
        
        return
    }
    

    constructor {animationInterfaceArray animationBehavior} {
        next $animationBehavior
        my initFields_SimultaneousCompoundIndexAnimation
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
    

    method set {gl} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] set $gl
        }
    }
    

    method getAnimationInterfaceArray {} {
        return [my jget animationInterfaceArray]
    }
    

    method setAnimationInterfaceArray {animationInterfaceArray} {
        my jset animationInterfaceArray $animationInterfaceArray
    }
}

namespace eval ::SimultaneousCompoundIndexAnimation {
}


