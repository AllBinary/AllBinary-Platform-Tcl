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

oo::class create ::RightToLeftImageAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::RightToLeftImageAnimationFactory {
    method initFields_RightToLeftImageAnimationFactory {} {
        return
    }
    

    constructor {image dx dy animationBehaviorFactory} {
        next $image [::PrimitiveIntUtil::getArrayInstance] [$image getWidth] [$image getHeight] $dx $dy $animationBehaviorFactory
        my initFields_RightToLeftImageAnimationFactory
    }
    

    method getInstance {instanceId} {
        set scaledImage [[my jget animationFactoryImageScaleUtil] createImage [my getImage] [[my jget animationFactoryInitializationVisitor] jget width] [[my jget animationFactoryInitializationVisitor] jget height] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        if {[expr {[expr {[[my jget animationFactoryInitializationVisitor] jget dx] != 0}] || [expr {[[my jget animationFactoryInitializationVisitor] jget dy] != 0}]}]} {
            [my jget animationFactoryImageScaleUtil] processAdjust [self]
            return [::AdjustedRightToLeftImageAnimation new $scaledImage [[my jget animationFactoryInitializationVisitor] jget dx] [[my jget animationFactoryInitializationVisitor] jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::RightToLeftImageAnimation new $scaledImage [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
    }
}

namespace eval ::RightToLeftImageAnimationFactory {
}


