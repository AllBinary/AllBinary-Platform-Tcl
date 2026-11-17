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

oo::class create ::BottomToTopImageAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::BottomToTopImageAnimationFactory {
    method initFields_BottomToTopImageAnimationFactory {} {
        return
    }
    

    constructor {image animationBehaviorFactory} {
        next $image [::PrimitiveIntUtil::getArrayInstance] [$image getWidth] [$image getHeight] 0 0 $animationBehaviorFactory
        my initFields_BottomToTopImageAnimationFactory
    }
    

    method getInstance {instanceId} {
        set scaledImage [[my jget animationFactoryImageScaleUtil] createImage [my getImage] [[my jget animationFactoryInitializationVisitor] jget width] [[my jget animationFactoryInitializationVisitor] jget height] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        return [::BottomToTopImageAnimation new $scaledImage [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
}

namespace eval ::BottomToTopImageAnimationFactory {
}


