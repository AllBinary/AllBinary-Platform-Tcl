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

oo::class create ::TweenedImageAnimation {
    superclass ::IndexedAnimation
}

oo::define ::TweenedImageAnimation {
    method initFields_TweenedImageAnimation {} {
        my jset image {}
        my jset dx 0
        my jset dy 0
        my jset totalFrames 0
        my jset circularIndexUtil {}
        my jset anchor 0
        
        
        
        
        
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {image dx dy totalFrames animationBehavior} {
        next $animationBehavior
        my initFields_TweenedImageAnimation
        my jset image $image
        my jset dx $dx
        my jset dy $dy
        my jset totalFrames $totalFrames
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [my jget totalFrames]]
    }
    

    method getAnimationSize {} {
        return [my getSize]
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
        return [my jget totalFrames]
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method paintXY {graphics x y} {
        set frame [my getFrame]
        set currentX [jint [expr {[my jget dx] * $frame}]]
        set currentY [jint [expr {[my jget dy] * $frame}]]
        $graphics drawImage [my jget image] [jint [expr {$x + $currentX}]] [jint [expr {$y + $currentY}]] [my jget anchor]
    }
    

    method close {} {
        [::DisposalUtil::getInstance] disposeImage [my jget image]
    }
    

    method finalize {} {
        [::DisposalUtil::getInstance] disposeImage [my jget image]
    }
}

namespace eval ::TweenedImageAnimation {
}


