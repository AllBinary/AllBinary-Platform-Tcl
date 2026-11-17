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

oo::class create ::TopToBottomImageAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::TopToBottomImageAnimationFactory {
    method initFields_TopToBottomImageAnimationFactory {} {
        return
    }
    

    constructor {image sequenceArray animationBehaviorFactory} {
        next $image $sequenceArray [$image getWidth] [$image getHeight] 0 0 $animationBehaviorFactory
        my initFields_TopToBottomImageAnimationFactory
    }
    

    method getInstance {instanceId} {
        set scaledImage [[my jget animationFactoryImageScaleUtil] createImage [my getImage] [[my jget animationFactoryInitializationVisitor] jget width] [[my jget animationFactoryInitializationVisitor] jget height] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        return [::TopToBottomImageAnimation new $scaledImage [my getSequenceArray] [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
}

namespace eval ::TopToBottomImageAnimationFactory {
}


