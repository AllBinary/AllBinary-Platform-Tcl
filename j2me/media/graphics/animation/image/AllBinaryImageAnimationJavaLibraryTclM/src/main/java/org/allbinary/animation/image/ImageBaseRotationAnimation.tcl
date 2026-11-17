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

oo::class create ::ImageBaseRotationAnimation {
    superclass ::RotationAnimation
}

oo::define ::ImageBaseRotationAnimation {
    method initFields_ImageBaseRotationAnimation {} {
        my jset image {}
        my jset anchor 0
        
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {image angleInfo totalAngle animationBehavior} {
        next $angleInfo [::CircularIndexUtil::createInstance [expr {$totalAngle / [[$angleInfo getAngleIncrementInfo] getAngleIncrement]}]] $animationBehavior
        my initFields_ImageBaseRotationAnimation
        my jset image $image
    }
    

    method getAnimationSize {} {
        return [my getSize]
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method paintXY {graphics x y} {
        $graphics drawImage [my jget image] $x $y [my jget anchor]
    }
    

    method getImage {} {
        return [my jget image]
    }
    

    method getWidth {} {
        return [[my jget image] getWidth]
    }
    

    method getHeight {} {
        return [[my jget image] getHeight]
    }
    

    method close {} {
        [::DisposalUtil::getInstance] disposeImage [my jget image]
    }
    

    method finalize {} {
        [::DisposalUtil::getInstance] disposeImage [my jget image]
    }
}

namespace eval ::ImageBaseRotationAnimation {
}


