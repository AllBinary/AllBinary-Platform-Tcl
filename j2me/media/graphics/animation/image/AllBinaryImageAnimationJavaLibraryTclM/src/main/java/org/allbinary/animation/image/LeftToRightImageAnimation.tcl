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

oo::class create ::LeftToRightImageAnimation {
    superclass ::ImageSegmentAnimation
}

oo::define ::LeftToRightImageAnimation {
    method initFields_LeftToRightImageAnimation {} {
        my jset currentWidth 0
        my jset anchor 0
        
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {image sequenceArray animationBehavior} {
        next $image $sequenceArray $animationBehavior
        my initFields_LeftToRightImageAnimation
        my jset currentWidth 0
        if {[expr {[[my getSequence] get 0] == [expr {-1}]}]} {
            my setFrame [expr {[my getSize] - 1}]
        }
    }
    

    method nextFrame {} {
        if {[expr {[[my getSequence] get 0] == [expr {-1}]}]} {
            next
        } else {
            next
        }
        my update
    }
    

    method previousFrame {} {
        if {[expr {[[my getSequence] get 0] == [expr {-1}]}]} {
            next
        } else {
            next
        }
        my update
    }
    

    method setFrame {index} {
        next $index
        my update
    }
    

    method update {} {
        my jset currentWidth [expr {[expr {[my getDrawWidth] * [my getFrame]}] / [my getSize]}]
    }
    

    method paintXY {graphics x y} {
        $graphics drawRegion [my getImage] [my getStartX] [my getStartY] [my jget currentWidth] [my getDrawHeight] [::Sprite::staticGet_TRANS_NONE] $x $y [my jget anchor]
    }
}

namespace eval ::LeftToRightImageAnimation {
}


