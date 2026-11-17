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

oo::class create ::HackRotationSpriteIndexedAnimation {
    superclass ::RotationAnimation
}

oo::define ::HackRotationSpriteIndexedAnimation {
    method initFields_HackRotationSpriteIndexedAnimation {} {
        my jset sprite {}
        my jset image {}
        
        
        return
    }
    

    constructor {sprite image angleInfo animationBehavior} {
        next $angleInfo [::CircularIndexUtil::createInstance [expr {360 / [[$angleInfo getAngleIncrementInfo] getAngleIncrement]}]] $animationBehavior
        my initFields_HackRotationSpriteIndexedAnimation
        my jset sprite $sprite
        my jset image $image
    }
    

    method getAnimationSize {} {
        return [my getSize]
    }
    

    method paintFrame {g frame x y} {
        my setFrame $frame
        my paintXY $g $x $y
    }
    

    method paintXY {g x y} {
        [my jget sprite] setPosition $x $y
        my paint $g
    }
    

    method paint {g} {
        [my jget sprite] paint $g
    }
    

    method nextRotation {} {
        [my jget sprite] nextFrame
    }
    

    method previousRotation {} {
        [my jget sprite] prevFrame
    }
    

    method getSize {} {
        return [[my jget sprite] getRawFrameCount]
    }
    

    method setFrame {frame} {
        [my jget sprite] setFrame $frame
    }
    

    method getFrame {} {
        return [[my jget sprite] getFrame]
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
}

namespace eval ::HackRotationSpriteIndexedAnimation {
}


