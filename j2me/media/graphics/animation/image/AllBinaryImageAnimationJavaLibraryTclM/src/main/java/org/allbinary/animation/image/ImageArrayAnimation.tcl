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

oo::class create ::ImageArrayAnimation {
    superclass ::IndexedAnimation
}

oo::define ::ImageArrayAnimation {
    method initFields_ImageArrayAnimation {} {
        my jset imageArray {}
        my jset totalFrames 0
        my jset circularIndexUtil {}
        my jset anchor 0
        my jset imageArray [::NullImage::staticGet_NULL_IMAGE_ARRAY]
        my jset totalFrames 0
        my jset circularIndexUtil [::CircularIndexUtil::staticGet_NULL_CIRCULAR_INDEX_UTIL]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {imageArray animationBehavior} {
        next $animationBehavior
        my initFields_ImageArrayAnimation
        my setImageArray $imageArray
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
    

    method getImage {index} {
        return [[my jget imageArray] get $index]
    }
    

    method getImageArray {} {
        return [my jget imageArray]
    }
    

    method setImageArray {imageArray} {
        my jset imageArray $imageArray
        my jset totalFrames [$imageArray length]
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [my jget totalFrames]]
    }
    

    method paintXY {graphics x y} {
        $graphics drawImage [[my jget imageArray] get [[my jget circularIndexUtil] getIndex]] $x $y [my jget anchor]
    }
}

namespace eval ::ImageArrayAnimation {
}


