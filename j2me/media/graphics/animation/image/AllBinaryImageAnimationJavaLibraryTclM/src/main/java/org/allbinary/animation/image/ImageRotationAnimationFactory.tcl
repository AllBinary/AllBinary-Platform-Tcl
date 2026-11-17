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

oo::class create ::ImageRotationAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::ImageRotationAnimationFactory {
    method initFields_ImageRotationAnimationFactory {} {
        my jset angleIncrement 0
        
        return
    }
    

    constructor {image width height dx dy angleIncrement animationBehaviorFactory} {
        next $image [::PrimitiveIntUtil::getArrayInstance] $width $height 0 0 $animationBehaviorFactory
        my initFields_ImageRotationAnimationFactory
        my jset angleIncrement $angleIncrement
        [my jget animationFactoryInitializationVisitor] jset dx $dx
        [my jget animationFactoryInitializationVisitor] jset dy $dy
    }
    

    method getInstance {instanceId} {
        if {[expr {[expr {[[my jget animationFactoryInitializationVisitor] jget dx] != 0}] || [expr {[[my jget animationFactoryInitializationVisitor] jget dy] != 0}]}]} {
            [my jget animationFactoryImageScaleUtil] processAdjust [self]
            return [::AdjustedImageBaseRotationAnimation new [my getImage] [::AngleInfo::getInstance [my jget angleIncrement]] [[::AngleFactory::getInstance] jget TOTAL_ANGLE] [[my jget animationFactoryInitializationVisitor] jget dx] [[my jget animationFactoryInitializationVisitor] jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::ImageBaseRotationAnimation new [my getImage] [::AngleInfo::getInstance [my jget angleIncrement]] [[::AngleFactory::getInstance] jget TOTAL_ANGLE] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
    }
    

    method getAngleIncrementP {} {
        return [my jget angleIncrement]
    }
}

namespace eval ::ImageRotationAnimationFactory {
}


