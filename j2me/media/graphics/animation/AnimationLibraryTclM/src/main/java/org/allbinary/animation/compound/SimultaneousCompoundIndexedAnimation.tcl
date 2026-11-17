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

oo::class create ::SimultaneousCompoundIndexedAnimation {
    superclass ::IndexedAnimation
}

oo::define ::SimultaneousCompoundIndexedAnimation {
    method initFields_SimultaneousCompoundIndexedAnimation {} {
        my jset animationInterfaceArray {}
        
        return
    }
    

    constructor {animationInterfaceArray animationBehavior} {
        next $animationBehavior
        my initFields_SimultaneousCompoundIndexedAnimation
        my jset animationInterfaceArray $animationInterfaceArray
    }
    

    method setFrame {frameIndex} {
        set indexedAnimation {}
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set indexedAnimation [[my jget animationInterfaceArray] get $index]
            $indexedAnimation setFrame $frameIndex
        }
    }
    

    method getFrame {} {
        set indexedAnimation [[my jget animationInterfaceArray] get 0]
        return [$indexedAnimation getFrame]
    }
    

    method getSize {} {
        set indexedAnimation [[my jget animationInterfaceArray] get 0]
        return [$indexedAnimation getSize]
    }
    

    method previousFrame {} {
        set indexedAnimation {}
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set indexedAnimation [[my jget animationInterfaceArray] get $index]
            $indexedAnimation previousFrame
        }
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method nextFrame {} {
        for {set index [[my jget animationInterfaceArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[my jget animationInterfaceArray] get $index] nextFrame
        }
    }
    

    method paintXY {graphics x y} {
        set size [[my jget animationInterfaceArray] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [[my jget animationInterfaceArray] get $index] paintXY $graphics $x $y
        }
    }
    

    method paintThreedXYZ {graphics x y z} {
        set size [[my jget animationInterfaceArray] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [[my jget animationInterfaceArray] get $index] paintThreedXYZ $graphics $x $y $z
        }
    }
    

    method getAnimationInterfaceArray {} {
        return [my jget animationInterfaceArray]
    }
    

    method setAnimationInterfaceArray {animationInterfaceArray} {
        my jset animationInterfaceArray $animationInterfaceArray
    }
}

namespace eval ::SimultaneousCompoundIndexedAnimation {
}


