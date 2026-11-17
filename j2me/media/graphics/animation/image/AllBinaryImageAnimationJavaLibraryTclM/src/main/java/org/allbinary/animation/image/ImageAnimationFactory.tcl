# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

oo::class create ::ImageAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::ImageAnimationFactory {
    method initFields_ImageAnimationFactory {} {
        return
    }
    
    

    constructor {image width height dx dy animationBehaviorFactory} {
        next $image [::PrimitiveIntUtil::getArrayInstance] $width $height $dx $dy $animationBehaviorFactory
        my initFields_ImageAnimationFactory
    }
    

    method getInstance {instanceId} {
        set scaledImage [[my jget animationFactoryImageScaleUtil] createImage [my getImage] [[my jget animationFactoryInitializationVisitor] jget width] [[my jget animationFactoryInitializationVisitor] jget height] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        set openGLUtil [::OpenGLUtil::getInstance]
        set scaledImage [$openGLUtil addImage $scaledImage]
        if {[expr {[expr {[[my jget animationFactoryInitializationVisitor] jget dx] != 0}] || [expr {[[my jget animationFactoryInitializationVisitor] jget dy] != 0}]}]} {
            [my jget animationFactoryImageScaleUtil] processAdjust [self]
            return [::AdjustedImageAnimation new $scaledImage [[my jget animationFactoryInitializationVisitor] jget dx] [[my jget animationFactoryInitializationVisitor] jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::ImageAnimation new $scaledImage [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
    }
}

namespace eval ::ImageAnimationFactory {
    proc createFactory {image} {
        return [::ImageAnimationFactory new $image [$image getWidth] [$image getHeight] 0 0 [::AnimationBehaviorFactory::getInstance]]
    }
}


