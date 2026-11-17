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
# package org.allbinary.animation.caption

oo::class create ::CaptionIndexedAnimation {
    superclass ::IndexedAnimation
}

oo::define ::CaptionIndexedAnimation {
    method initFields_CaptionIndexedAnimation {} {
        my jset animationInterface {}
        my jset movieIndexedAnimationInterface {}
        my jset captionDx 0
        my jset captionDy 0
        my jset dx 0
        my jset dy 0
        my jset time 0
        my jset END_EVENT {}
        my jset timeDelayHelper {}
        my jset player {}
        
        
        
        
        
        
        
        
        
        
        return
    }
    

    constructor {animationInterface movieIndexedAnimationInterface player captionDx captionDy dx dy time animationBehavior} {
        next $animationBehavior
        my initFields_CaptionIndexedAnimation
        my jset animationInterface $animationInterface
        my jset movieIndexedAnimationInterface $movieIndexedAnimationInterface
        my jset captionDx $captionDx
        my jset captionDy $captionDy
        my jset dx $dx
        my jset dy $dy
        my jset time $time
        my jset END_EVENT [::AllBinaryEventObject new [self]]
        set timePerFrame [jdiv [my jget time] [my getSize]]
        my jset timeDelayHelper [::TimeDelayHelper new $timePerFrame]
        my jset player $player
        [my jget player] start
    }
    

    method nextFrame {} {
        if {[[my jget timeDelayHelper] isTime [[::GameTickTimeDelayHelperFactory::getInstance] jget startTime]]} {
            [my jget movieIndexedAnimationInterface] nextFrame
        }
        if {[my isLastFrame]} {
            [::AnimationEventHandler::getInstance] fireEvent [my jget END_EVENT]
        }
    }
    

    method isLastFrame {} {
        if {[expr {[[my jget movieIndexedAnimationInterface] getFrame] == [jint [expr {[my getSize] - 1}]]}]} {
            return true
        } else {
            return false
        }
    }
    

    method previousFrame {} {
        [my jget movieIndexedAnimationInterface] previousFrame
    }
    

    method setFrame {index} {
        [my jget movieIndexedAnimationInterface] setFrame $index
    }
    

    method getFrame {} {
        return [[my jget movieIndexedAnimationInterface] getFrame]
    }
    

    method getSize {} {
        return [[my jget movieIndexedAnimationInterface] getSize]
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method paintXY {graphics x y} {
        [my jget animationInterface] paintXY $graphics [jint [expr {$x + [my jget captionDx]}]] [jint [expr {$y + [my jget captionDy]}]]
        [my jget movieIndexedAnimationInterface] paintXY $graphics [jint [expr {[jint [expr {$x + [my jget captionDx]}]] + [my jget dx]}]] [jint [expr {[jint [expr {$y + [my jget captionDy]}]] + [my jget dy]}]]
    }
    

    method paintThreedXYZ {graphics x y z} {
        [my jget animationInterface] paintThreedXYZ $graphics [jint [expr {$x + [my jget captionDx]}]] [jint [expr {$y + [my jget captionDy]}]] $z
        [my jget movieIndexedAnimationInterface] paintThreedXYZ $graphics [jint [expr {[jint [expr {$x + [my jget captionDx]}]] + [my jget dx]}]] [jint [expr {[jint [expr {$y + [my jget captionDy]}]] + [my jget dy]}]] $z
    }
}

namespace eval ::CaptionIndexedAnimation {
}


