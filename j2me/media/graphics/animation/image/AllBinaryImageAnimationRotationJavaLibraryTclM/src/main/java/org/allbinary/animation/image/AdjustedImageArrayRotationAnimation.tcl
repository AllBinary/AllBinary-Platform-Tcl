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

#TWB - Adjustments should be done in the resource creation and not at the animation level
oo::class create ::AdjustedImageArrayRotationAnimation {
    superclass ::ImageArrayRotationAnimation
}

oo::define ::AdjustedImageArrayRotationAnimation {
    method initFields_AdjustedImageArrayRotationAnimation {} {
        my jset dx 0
        my jset dy 0
        my jset dx 0
        my jset dy 0
        return
    }
    
    
    

    constructor {imageArray angleInfo totalAngle dx dy animationBehavior} {
        next $imageArray $angleInfo $totalAngle $animationBehavior
        my initFields_AdjustedImageArrayRotationAnimation
        my init $dx $dy
    }
    

    method init {dx dy} {
        my setDx $dx
        my setDy $dy
    }
    

    method paintXY {graphics x y} {
        next $graphics [jint [expr {$x + [my jget dx]}]] [jint [expr {$y + [my jget dy]}]]
    }
    

    method setDx {dx} {
        my jset dx $dx
    }
    

    method getDx {} {
        return [my jget dx]
    }
    

    method setDy {dy} {
        my jset dy $dy
    }
    

    method getDy {} {
        return [my jget dy]
    }
}

namespace eval ::AdjustedImageArrayRotationAnimation {
    proc createAdjustedImageArrayRotationAnimationInfo {anyType animationBehavior} {
        set imageRotationAnimationInfo $anyType
        return [::AdjustedImageArrayRotationAnimation new [$imageRotationAnimationInfo getImageArray] [$imageRotationAnimationInfo getAngleInfoP] [$imageRotationAnimationInfo getTotalAngle] [$imageRotationAnimationInfo getDx] [$imageRotationAnimationInfo getDy] $animationBehavior]
    }
    proc createAnimation {imageArray angleInfo totalAngle animationBehavior} {
        return [::AdjustedImageArrayRotationAnimation new $imageArray $angleInfo $totalAngle [expr {-([expr {[[$imageArray get 0] getWidth] >> 2}])}] [expr {-([expr {[[$imageArray get 0] getHeight] >> 2}])}] $animationBehavior]
    }
}


