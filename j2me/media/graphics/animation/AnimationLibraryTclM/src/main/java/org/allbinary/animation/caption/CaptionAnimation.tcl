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

oo::class create ::CaptionAnimation {
    superclass ::Animation
}

oo::define ::CaptionAnimation {
    method initFields_CaptionAnimation {} {
        my jset animationInterface {}
        my jset overlayAnimationInterface {}
        my jset captionDx 0
        my jset captionDy 0
        my jset dx 0
        my jset dy 0
        
        
        
        
        
        
        return
    }
    

    constructor {animationInterface overlayAnimationInterface captionDx captionDy dx dy} {
        next
        my initFields_CaptionAnimation
        my jset animationInterface $animationInterface
        my jset overlayAnimationInterface $overlayAnimationInterface
        my jset captionDx $captionDx
        my jset captionDy $captionDy
        my jset dx $dx
        my jset dy $dy
    }
    

    method nextFrame {} {
    }
    

    method paintXY {graphics x y} {
        [my jget animationInterface] paintXY $graphics [jint [expr {$x + [my jget captionDx]}]] [jint [expr {$y + [my jget captionDy]}]]
        [my jget overlayAnimationInterface] paintXY $graphics [jint [expr {[jint [expr {$x + [my jget captionDx]}]] + [my jget dx]}]] [jint [expr {[jint [expr {$y + [my jget captionDy]}]] + [my jget dy]}]]
    }
    

    method paintThreedXYZ {graphics x y z} {
        [my jget animationInterface] paintThreedXYZ $graphics [jint [expr {$x + [my jget captionDx]}]] [jint [expr {$y + [my jget captionDy]}]] $z
        [my jget overlayAnimationInterface] paintThreedXYZ $graphics [jint [expr {[jint [expr {$x + [my jget captionDx]}]] + [my jget dx]}]] [jint [expr {[jint [expr {$y + [my jget captionDy]}]] + [my jget dy]}]] $z
    }
}

namespace eval ::CaptionAnimation {
}


