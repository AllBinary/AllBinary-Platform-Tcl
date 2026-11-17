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

oo::class create ::SpriteIndexedAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::SpriteIndexedAnimationFactory {
    method initFields_SpriteIndexedAnimationFactory {} {
        my jset animationFactorySpriteScaleUtil {}
        my jset basicColorArray {}
        my jset animationFactorySpriteScaleUtil [::AnimationFactorySpriteScaleUtil::getInstance]
        my jset basicColorArray [[::BasicColorUtil::getInstance] jget ZERO_ARRAY]
        return
    }
    
    
    
    

    constructor {image basicColorArray sequenceArray width height dx dy animationBehaviorFactory} {
        next $image $sequenceArray $width $height $dx $dy $animationBehaviorFactory
        my initFields_SpriteIndexedAnimationFactory
        my jset basicColorArray $basicColorArray
    }
    

    method initHWH {} {
        [my jget animationFactoryInitializationVisitor] jset dx [expr {-([expr {[[my jget animationFactoryInitializationVisitor] jget width] >> 2}])}]
        [my jget animationFactoryInitializationVisitor] jset dy [expr {-([expr {[[my jget animationFactoryInitializationVisitor] jget height] >> 2}])}]
        if {[::AndroidUtil::isAndroid]} {
            [my jget animationFactoryInitializationVisitor] jset dx [expr {[[my jget animationFactoryInitializationVisitor] jget dx] + 3}]
        }
    }
    

    method getInstance {instanceId} {
        set sprite [[my jget animationFactorySpriteScaleUtil] createImage [my getImage] [[my jget animationFactoryInitializationVisitor] jget width] [[my jget animationFactoryInitializationVisitor] jget height] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        if {[expr {[expr {[[my jget animationFactoryInitializationVisitor] jget dx] != 0}] || [expr {[[my jget animationFactoryInitializationVisitor] jget dy] != 0}]}]} {
            return [::AdjustedSpriteIndexedAnimation new $sprite [my getImage] [my jget basicColorArray] [[my jget animationFactoryInitializationVisitor] jget dx] [[my jget animationFactoryInitializationVisitor] jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::SpriteIndexedAnimation new $sprite [my getImage] [my jget basicColorArray] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
    }
    

    method getInstanceAnimation {animationInterface} {
        return [my getInstance 0]
    }
}

namespace eval ::SpriteIndexedAnimationFactory {
    proc createCWHDXY {image basicColorArray width height dx dy animationBehaviorFactory} {
        return [::SpriteIndexedAnimationFactory new $image $basicColorArray [::PrimitiveIntUtil::getArrayInstance] $width $height $dx $dy $animationBehaviorFactory]
    }
    proc createCWH {image basicColorArray width height animationBehaviorFactory} {
        set spriteIndexedAnimationFactory [::SpriteIndexedAnimationFactory new $image $basicColorArray [::PrimitiveIntUtil::getArrayInstance] $width $height 0 0 $animationBehaviorFactory]
        $spriteIndexedAnimationFactory initHWH
        return $spriteIndexedAnimationFactory
    }
    proc createWH {image width height animationBehaviorFactory} {
        return [::SpriteIndexedAnimationFactory new $image [[::BasicColorUtil::getInstance] jget ZERO_ARRAY] [::PrimitiveIntUtil::getArrayInstance] $width $height 0 0 $animationBehaviorFactory]
    }
}


