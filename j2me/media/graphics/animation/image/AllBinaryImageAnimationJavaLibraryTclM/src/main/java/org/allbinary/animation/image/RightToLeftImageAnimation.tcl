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

oo::class create ::RightToLeftImageAnimation {
    superclass ::ImageSegmentAnimation
}

oo::define ::RightToLeftImageAnimation {
    method initFields_RightToLeftImageAnimation {} {
        my jset startWidth 0
        my jset currentWidth 0
        my jset anchor 0
        my jset startWidth 0
        my jset currentWidth 0
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {image animationBehavior} {
        next $image [::PrimitiveIntUtil::getArrayInstance] $animationBehavior
        my initFields_RightToLeftImageAnimation
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
        my jset startWidth [expr {[expr {[my getDrawWidth] * [my getFrame]}] / [my getSize]}]
        my jset currentWidth [expr {[my getDrawWidth] - [my jget startWidth]}]
    }
    

    method paintXY {graphics x y} {
        $graphics drawRegion [my getImage] [my jget startWidth] [my getStartY] [my jget currentWidth] [my getDrawHeight] [::Sprite::staticGet_TRANS_NONE] [jint [expr {$x + [my jget startWidth]}]] $y [my jget anchor]
    }
}

namespace eval ::RightToLeftImageAnimation {
}


