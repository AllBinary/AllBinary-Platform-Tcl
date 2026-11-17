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
# package org.allbinary.animation.image.sprite

oo::class create ::ColorCompositeSpriteIndexedAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::ColorCompositeSpriteIndexedAnimationFactory {
    method initFields_ColorCompositeSpriteIndexedAnimationFactory {} {
        my jset animationFactorySpriteScaleUtil {}
        my jset basicColorArray {}
        my jset animationFactorySpriteScaleUtil [::AnimationFactorySpriteScaleUtil::getInstance]
        
        return
    }
    

    constructor {image basicColorArray width height animationBehaviorFactory} {
        next $image [::PrimitiveIntUtil::getArrayInstance] $width $height 0 0 $animationBehaviorFactory
        my initFields_ColorCompositeSpriteIndexedAnimationFactory
        my jset basicColorArray $basicColorArray
    }
    

    method getInstance {instanceId} {
        set sprite [[my jget animationFactorySpriteScaleUtil] createImage [my getImage] [[my jget animationFactoryInitializationVisitor] jget width] [[my jget animationFactoryInitializationVisitor] jget height] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        return [::SpriteIndexedAnimation new $sprite [my getImage] [my jget basicColorArray] [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
    

    method getInstanceAnimation {animationInterface} {
        return [my getInstance 0]
    }
}

namespace eval ::ColorCompositeSpriteIndexedAnimationFactory {
}


