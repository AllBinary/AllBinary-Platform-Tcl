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

oo::class create ::ImageArrayRotationAnimation {
    superclass ::ImageArrayBaseRotationAnimation
}

oo::define ::ImageArrayRotationAnimation {
    method initFields_ImageArrayRotationAnimation {} {
        my jset expectedTotalFrames 0
        my jset expectedTotalFrames 0
        return
    }
    
    

    constructor {imageArray angleInfo totalAngle animationBehavior} {
        next $imageArray $angleInfo $animationBehavior
        my initFields_ImageArrayRotationAnimation
        my initImageArray $imageArray $angleInfo $totalAngle
    }
    

    method initImageArray {imageArray angleInfo totalAngle} {
        my jset expectedTotalFrames [expr {$totalAngle / [[[my jget angleInfo] getAngleIncrementInfo] getAngleIncrement]}]
        [my jget angleInfo] adjustAngle 0
        if {[expr {[my jget expectedTotalFrames] != [my getSize]}]} {
            error [jexception Exception "Wrong Number of Frames"]
        }
    }
    

    method setImageArray {imageArray} {
        next $imageArray
        [my jget angleInfo] adjustAngle 0
    }
}

namespace eval ::ImageArrayRotationAnimation {
    proc createAnimation {anyType animationBehavior} {
        set imageRotationAnimationInfo $anyType
        return [::ImageArrayRotationAnimation new [$imageRotationAnimationInfo getImageArray] [$imageRotationAnimationInfo getAngleInfoP] [$imageRotationAnimationInfo getTotalAngle] $animationBehavior]
    }
}


