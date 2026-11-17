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

oo::class create ::ImageArrayBaseRotationAnimation {
    superclass ::RotationAnimation
}

oo::define ::ImageArrayBaseRotationAnimation {
    method initFields_ImageArrayBaseRotationAnimation {} {
        my jset imageModifierUtil {}
        my jset originalImageArray {}
        my jset imageArray {}
        my jset currentImage {}
        my jset totalFrames 0
        my jset anchor 0
        my jset imageModifierUtil [::ImageModifierUtil::getInstanceOrCreate]
        
        my jset imageArray [::NullImage::staticGet_NULL_IMAGE_ARRAY]
        
        my jset totalFrames 0
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {originalImageArray angleInfo animationBehavior} {
        next $angleInfo [::CircularIndexUtil::createInstance [expr {360 / [[$angleInfo getAngleIncrementInfo] getAngleIncrement]}]] $animationBehavior
        my initFields_ImageArrayBaseRotationAnimation
        my jset originalImageArray $originalImageArray
        my setImageArray [[my jget imageModifierUtil] getImageArray $originalImageArray]
        my jset currentImage [[my jget imageArray] get [[my jget circularIndexUtil] getIndex]]
    }
    

    method getAnimationSize {} {
        return [my getSize]
    }
    

    method setAlpha {alpha} {
        if {[expr {[my jget alphaP] != $alpha}]} {
            next $alpha
            [my jget imageModifierUtil] reset
            set index [[my jget circularIndexUtil] getIndex]
            [my jget imageModifierUtil] setAlpha [[my jget originalImageArray] get $index] [[my jget imageArray] get $index] $index [my jget alphaP]
        }
    }
    

    method nextRotation {} {
        next
        set index [[my jget circularIndexUtil] getIndex]
        [my jget imageModifierUtil] setAlpha [[my jget originalImageArray] get $index] [[my jget imageArray] get $index] $index [my jget alphaP]
        my jset currentImage [[my jget imageArray] get $index]
    }
    

    method previousRotation {} {
        next
        set index [[my jget circularIndexUtil] getIndex]
        [my jget imageModifierUtil] setAlpha [[my jget originalImageArray] get $index] [[my jget imageArray] get $index] $index [my jget alphaP]
        my jset currentImage [[my jget imageArray] get $index]
    }
    

    method setFrame {index2} {
        next $index2
        set index [[my jget circularIndexUtil] getIndex]
        [my jget imageModifierUtil] setAlpha [[my jget originalImageArray] get $index] [[my jget imageArray] get $index] $index [my jget alphaP]
        my jset currentImage [[my jget imageArray] get $index]
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method setImageArray {imageArray} {
        my jset imageArray $imageArray
        my jset totalFrames [$imageArray length]
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [my jget totalFrames]]
    }
    

    method paintXY {graphics x y} {
        $graphics drawImage [my jget currentImage] $x $y [my jget anchor]
    }
    

    method close {} {
        set disposalUtil [::DisposalUtil::getInstance]
        set size2 [[my jget imageArray] length]
        for {set index 0} {[expr {$index < $size2}]} {jpostincr index 1} {
            $disposalUtil disposeImage [[my jget imageArray] get $index]
        }
        set size [[my jget originalImageArray] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $disposalUtil disposeImage [[my jget originalImageArray] get $index]
        }
        $disposalUtil disposeImage [my jget currentImage]
    }
    

    method finalize {} {
        set disposalUtil [::DisposalUtil::getInstance]
        set size2 [[my jget imageArray] length]
        for {set index 0} {[expr {$index < $size2}]} {jpostincr index 1} {
            $disposalUtil disposeImage [[my jget imageArray] get $index]
        }
        set size [[my jget originalImageArray] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $disposalUtil disposeImage [[my jget originalImageArray] get $index]
        }
        $disposalUtil disposeImage [my jget currentImage]
    }
}

namespace eval ::ImageArrayBaseRotationAnimation {
}


