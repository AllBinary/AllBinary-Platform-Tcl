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
# package org.allbinary.animation.image.sprite

oo::class create ::AllBinaryAdjustedSpriteRotationAnimation {
    superclass ::AllBinarySpriteRotationAnimation
}

oo::define ::AllBinaryAdjustedSpriteRotationAnimation {
    method initFields_AllBinaryAdjustedSpriteRotationAnimation {} {
        my jset dx 0
        my jset dy 0
        
        
        return
    }
    

    constructor {sprite image dx dy animationBehavior} {
        next $sprite $image $animationBehavior
        my initFields_AllBinaryAdjustedSpriteRotationAnimation
        my jset dx $dx
        my jset dy $dy
    }
    

    method paintXY {g x y} {
        [my jget sprite] setPosition [jint [expr {$x + [my jget dx]}]] [jint [expr {$y + [my jget dy]}]]
        my paint $g
    }
}

namespace eval ::AllBinaryAdjustedSpriteRotationAnimation {
}


