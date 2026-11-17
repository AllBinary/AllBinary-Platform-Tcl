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
# package org.allbinary.animation.image

oo::class create ::ImageArraySpecialAnimation {
    superclass ::ImageArrayAnimation
}

oo::define ::ImageArraySpecialAnimation {
    method initFields_ImageArraySpecialAnimation {} {
        my jset timeDelayHelper {}
        my jset loopCount 0
        my jset loopCountTotal 0
        my jset timeDelayHelper [::TimeDelayHelper new 270]
        my jset loopCount 0
        my jset loopCountTotal 1
        return
    }
    

    constructor {imageArray animationBehavior} {
        next $imageArray $animationBehavior
        my initFields_ImageArraySpecialAnimation
        my reset
    }
    

    method getLoopCount {} {
        return [my jget loopCount]
    }
    

    method setLastFrame {} {
        [my jget circularIndexUtil] setIndex [expr {[[my jget circularIndexUtil] getSize] - 1}]
    }
    

    method reset {} {
        my setFrame [expr {[my getSize] - 1}]
        my jset loopCount 0
    }
    

    method nextFrame {} {
        if {[expr {[my getFrame] > 0}]} {
            if {[[my jget timeDelayHelper] isTime [[::GameTickTimeDelayHelperFactory::getInstance] jget startTime]]} {
                my previousFrame
                if {[expr {[my getFrame] == 0}]} {
                    my jpostinc loopCount 1
                }
            }
        }
    }
    

    method isComplete {} {
        if {[expr {[expr {[my jget loopCount] < [my jget loopCountTotal]}] || [expr {[my getFrame] != 0}]}]} {
            return false
        } else {
            return true
        }
    }
    

    method paintXY {graphics x y} {
        set x [expr {[[::DisplayInfoSingleton::getInstance] getLastHalfWidth] - ([expr {[[my getImage [[my jget circularIndexUtil] getIndex]] getWidth] >> 1}])}]
        set y 5
        next $graphics $x $y
    }
}

namespace eval ::ImageArraySpecialAnimation {
}


