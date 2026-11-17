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

oo::class create ::AdjustedImageBaseRotationAnimation {
    superclass ::ImageBaseRotationAnimation
}

oo::define ::AdjustedImageBaseRotationAnimation {
    method initFields_AdjustedImageBaseRotationAnimation {} {
        my jset dx 0
        my jset dy 0
        my jset dx 0
        my jset dy 0
        return
    }
    

    constructor {image angleInfo totalAngle dx dy animationBehavior} {
        next $image $angleInfo $totalAngle $animationBehavior
        my initFields_AdjustedImageBaseRotationAnimation
        my init $dx $dy
    }
    

    method init {dx dy} {
        my jset dx $dx
        my jset dy $dy
    }
    

    method paintXY {graphics x y} {
        next $graphics [jint [expr {$x + [my jget dx]}]] [jint [expr {$y + [my jget dy]}]]
    }
}

namespace eval ::AdjustedImageBaseRotationAnimation {
}


