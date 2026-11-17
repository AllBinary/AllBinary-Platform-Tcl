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

oo::class create ::BottomToTopImageAnimation {
    superclass ::ImageSegmentAnimation
}

oo::define ::BottomToTopImageAnimation {
    method initFields_BottomToTopImageAnimation {} {
        my jset startHeight 0
        my jset currentHeight 0
        my jset anchor 0
        my jset startHeight 0
        my jset currentHeight 0
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {image animationBehavior} {
        next $image [::PrimitiveIntUtil::getArrayInstance] $animationBehavior
        my initFields_BottomToTopImageAnimation
        my setFrame [expr {[my getSize] - 1}]
    }
    

    method nextFrame {} {
        next
        my update
    }
    

    method previousFrame {} {
        next
        my update
    }
    

    method setFrame {index} {
        next $index
        my update
    }
    

    method update {} {
        my jset startHeight [expr {[expr {[my getDrawHeight] * [my getFrame]}] / [my getSize]}]
        my jset currentHeight [expr {[my getDrawHeight] - [my jget startHeight]}]
    }
    

    method paintXY {graphics x y} {
        $graphics drawRegion [my getImage] [my getStartX] [my jget startHeight] [my getDrawWidth] [my jget currentHeight] [::Sprite::staticGet_TRANS_NONE] $x [jint [expr {$y + [my jget startHeight]}]] [my jget anchor]
    }
}

namespace eval ::BottomToTopImageAnimation {
}


