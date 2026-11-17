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

oo::class create ::ImageSegmentAnimation {
    superclass ::ImageAnimation
}

oo::define ::ImageSegmentAnimation {
    method initFields_ImageSegmentAnimation {} {
        my jset startX 0
        my jset startY 0
        my jset drawWidth 0
        my jset drawHeight 0
        my jset circularIndexUtil {}
        my jset sequenceArray {}
        
        
        
        
        
        
        return
    }
    

    constructor {image sequenceArray animationBehavior} {
        next $image $animationBehavior
        my initFields_ImageSegmentAnimation
        my jset startX 0
        my jset startY 0
        my jset drawWidth [[my getImage] getWidth]
        my jset drawHeight [[my getImage] getHeight]
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [my jget drawHeight]]
        my jset sequenceArray $sequenceArray
    }
    

    method nextFrame {} {
        [my jget circularIndexUtil] next
    }
    

    method previousFrame {} {
        [my jget circularIndexUtil] previous
    }
    

    method setFrame {index} {
        [my jget circularIndexUtil] setIndex $index
    }
    

    method getFrame {} {
        return [[my jget circularIndexUtil] getIndex]
    }
    

    method getSize {} {
        return [[my jget circularIndexUtil] getSize]
    }
    

    method setSequence {sequenceArray} {
        my jset sequenceArray $sequenceArray
    }
    

    method getSequence {} {
        return [my jget sequenceArray]
    }
    

    method paintXY {graphics x y} {
    }
    

    method getStartX {} {
        return [my jget startX]
    }
    

    method setStartX {startX} {
        my jset startX $startX
    }
    

    method getStartY {} {
        return [my jget startY]
    }
    

    method setStartY {startY} {
        my jset startY $startY
    }
    

    method getDrawWidth {} {
        return [my jget drawWidth]
    }
    

    method setDrawWidth {drawWidth} {
        my jset drawWidth $drawWidth
    }
    

    method getDrawHeight {} {
        return [my jget drawHeight]
    }
    

    method setDrawHeight {drawHeight} {
        my jset drawHeight $drawHeight
    }
}

namespace eval ::ImageSegmentAnimation {
}


