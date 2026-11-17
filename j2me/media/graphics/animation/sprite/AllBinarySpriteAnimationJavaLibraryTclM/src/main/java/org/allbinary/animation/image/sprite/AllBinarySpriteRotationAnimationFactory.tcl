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

oo::class create ::AllBinarySpriteRotationAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::AllBinarySpriteRotationAnimationFactory {
    method initFields_AllBinarySpriteRotationAnimationFactory {} {
        my jset animationFactorySpriteScaleUtil {}
        my jset animationFactorySpriteScaleUtil [::AnimationFactorySpriteScaleUtil::getInstance]
        return
    }
    
    
    
    
    
    
    

    constructor {image sequenceArray width height dx dy animationBehaviorFactory} {
        next $image $sequenceArray $width $height $dx $dy $animationBehaviorFactory
        my initFields_AllBinarySpriteRotationAnimationFactory
        if {[expr {$animationBehaviorFactory eq [::AnimationBehaviorFactory::getInstance]}]} {
            ::ForcedLogUtil::log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" [self]
        }
    }
    

    method init {dx dy} {
        [my jget animationFactoryInitializationVisitor] jset dx $dx
        [my jget animationFactoryInitializationVisitor] jset dy $dy
    }
    

    method initWH {dx dy} {
        my init $dx $dy
        [my jget animationFactoryInitializationVisitor] jset dx [expr {[[my jget animationFactoryInitializationVisitor] jget dx] + [expr {[expr {-[[my jget animationFactoryInitializationVisitor] jget width]}] / 5}]}]
        [my jget animationFactoryInitializationVisitor] jset dy [expr {[[my jget animationFactoryInitializationVisitor] jget dy] + [expr {[expr {-[[my jget animationFactoryInitializationVisitor] jget height]}] / 5}]}]
    }
    

    method getInstance {instanceId} {
        set sprite [[my jget animationFactorySpriteScaleUtil] createImage [my getImage] [[my jget animationFactoryInitializationVisitor] jget width] [[my jget animationFactoryInitializationVisitor] jget height] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        if {[expr {[expr {[[my jget animationFactoryInitializationVisitor] jget dx] != 0}] || [expr {[[my jget animationFactoryInitializationVisitor] jget dy] != 0}]}]} {
            return [::AllBinaryAdjustedSpriteRotationAnimation new $sprite [my getImage] [[my jget animationFactoryInitializationVisitor] jget dx] [[my jget animationFactoryInitializationVisitor] jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::AllBinarySpriteRotationAnimation new $sprite [my getImage] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
    }
    

    method getInstanceAnimation {animationInterface} {
        return [my getInstance 0]
    }
}

namespace eval ::AllBinarySpriteRotationAnimationFactory {
    proc createWHDY {image dx dy animationBehaviorFactory} {
        set spriteRotationAnimationFactory [::AllBinarySpriteRotationAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] ([expr {[$image getHeight] >> 2}]) ([expr {[$image getHeight] >> 2}]) 0 0 $animationBehaviorFactory]
        $spriteRotationAnimationFactory initWH $dx $dy
        return $spriteRotationAnimationFactory
    }
    proc createWH {image animationBehaviorFactory} {
        return [::AllBinarySpriteRotationAnimationFactory::createWHDY $image 0 0 $animationBehaviorFactory]
    }
    proc createDXY {image dx dy animationBehaviorFactory} {
        set spriteRotationAnimationFactory [::AllBinarySpriteRotationAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] [$image getHeight] [$image getHeight] 0 0 $animationBehaviorFactory]
        $spriteRotationAnimationFactory init $dx $dy
        return $spriteRotationAnimationFactory
    }
    proc createDXYQ {image dx dy animationBehaviorFactory} {
        set spriteRotationAnimationFactory [::AllBinarySpriteRotationAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] ([expr {[$image getHeight] >> 2}]) ([expr {[$image getHeight] >> 2}]) 0 0 $animationBehaviorFactory]
        $spriteRotationAnimationFactory init $dx $dy
        return $spriteRotationAnimationFactory
    }
    proc createQ {image animationBehaviorFactory} {
        return [::AllBinarySpriteRotationAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] ([expr {[$image getHeight] >> 2}]) ([expr {[$image getHeight] >> 2}]) 0 0 $animationBehaviorFactory]
    }
    proc createWHF {image animationBehaviorFactory} {
        return [::AllBinarySpriteRotationAnimationFactory new $image [::PrimitiveIntUtil::getArrayInstance] [$image getHeight] [$image getHeight] 0 0 $animationBehaviorFactory]
    }
}


