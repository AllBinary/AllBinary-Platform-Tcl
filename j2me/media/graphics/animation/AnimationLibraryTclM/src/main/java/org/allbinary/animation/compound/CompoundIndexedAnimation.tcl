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

oo::class create ::CompoundIndexedAnimation {
    superclass ::IndexedAnimation
}

oo::define ::CompoundIndexedAnimation {
    method initFields_CompoundIndexedAnimation {} {
        my jset circularIndexUtil {}
        my jset animationInterfaceArray {}
        
        
        return
    }
    

    constructor {animationInterfaceArray animationBehavior} {
        next $animationBehavior
        my initFields_CompoundIndexedAnimation
        my jset animationInterfaceArray $animationInterfaceArray
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [[my jget animationInterfaceArray] length]]
    }
    

    method setFrame {index} {
        set indexedAnimation [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]]
        $indexedAnimation setFrame $index
    }
    

    method getFrame {} {
        set indexedAnimation [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]]
        return [$indexedAnimation getFrame]
    }
    

    method getSize {} {
        set indexedAnimation [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]]
        return [$indexedAnimation getSize]
    }
    

    method previousFrame {} {
        set indexedAnimation [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]]
        $indexedAnimation previousFrame
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method nextFrame {} {
        [[my jget animationInterfaceArray] get [[my jget circularIndexUtil] getIndex]] nextFrame
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

namespace eval ::CompoundIndexedAnimation {
}


