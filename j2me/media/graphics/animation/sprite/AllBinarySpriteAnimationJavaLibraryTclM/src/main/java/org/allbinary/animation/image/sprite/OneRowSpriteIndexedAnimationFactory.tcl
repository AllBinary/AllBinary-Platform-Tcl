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

oo::class create ::OneRowSpriteIndexedAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::OneRowSpriteIndexedAnimationFactory {
    method initFields_OneRowSpriteIndexedAnimationFactory {} {
        my jset animationFactorySpriteScaleUtil {}
        my jset animationFactorySpriteScaleUtil [::AnimationFactorySpriteScaleUtil::getInstance]
        return
    }
    
    
    
    
    

    constructor {image sequenceArray width height dx dy animationBehaviorFactory} {
        next $image $sequenceArray $width $height $dx $dy $animationBehaviorFactory
        my initFields_OneRowSpriteIndexedAnimationFactory
    }
    

    method init {dx dy} {
        [my jget animationFactoryInitializationVisitor] jset dx $dx
        [my jget animationFactoryInitializationVisitor] jset dy $dy
    }
    

    method initW {dx} {
        my init $dx 0
        [my jget animationFactoryInitializationVisitor] jset dx [expr {[[my jget animationFactoryInitializationVisitor] jget dx] + [expr {-([expr {[[my jget animationFactoryInitializationVisitor] jget width] >> 2}])}]}]
    }
    

    method getInstance {instanceId} {
        set sprite [[my jget animationFactorySpriteScaleUtil] createImage [my getImage] [[my jget animationFactoryInitializationVisitor] jget width] [[my jget animationFactoryInitializationVisitor] jget height] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        if {[expr {[expr {[[my jget animationFactoryInitializationVisitor] jget dx] != 0}] || [expr {[[my jget animationFactoryInitializationVisitor] jget dy] != 0}]}]} {
            return [::AdjustedSpriteIndexedAnimation new $sprite [my getImage] [[::BasicColorUtil::getInstance] jget ZERO_ARRAY] [[my jget animationFactoryInitializationVisitor] jget dx] [[my jget animationFactoryInitializationVisitor] jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::SpriteIndexedAnimation new $sprite [my getImage] [[::BasicColorUtil::getInstance] jget ZERO_ARRAY] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
    }
}

namespace eval ::OneRowSpriteIndexedAnimationFactory {
    proc createFactoryDX {image dx animationBehaviorFactory} {
        set oneRowSpriteIndexedAnimationFactory [::OneRowSpriteIndexedAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] [$image getHeight] [$image getHeight] 0 0 $animationBehaviorFactory]
        $oneRowSpriteIndexedAnimationFactory initW $dx
        return $oneRowSpriteIndexedAnimationFactory
    }
    proc createFactoryDXY {image dx dy animationBehaviorFactory} {
        set oneRowSpriteIndexedAnimationFactory [::OneRowSpriteIndexedAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] [$image getHeight] [$image getHeight] 0 0 $animationBehaviorFactory]
        $oneRowSpriteIndexedAnimationFactory init $dx $dy
        return $oneRowSpriteIndexedAnimationFactory
    }
    proc createFactoryWH {image width height animationBehaviorFactory} {
        return [::OneRowSpriteIndexedAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] $width $height 0 0 $animationBehaviorFactory]
    }
    proc createFactory {image animationBehaviorFactory} {
        return [::OneRowSpriteIndexedAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] [$image getHeight] [$image getHeight] 0 0 $animationBehaviorFactory]
    }
}


