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

oo::class create ::ImageCaptionIndexedAnimationFactory {
    superclass ::JObject
}

oo::define ::ImageCaptionIndexedAnimationFactory {
    method initFields_ImageCaptionIndexedAnimationFactory {} {
        my jset animationFactoryImageScaleUtil {}
        my jset animationFactorySpriteScaleUtil {}
        my jset captionImage {}
        my jset spriteMovieImage {}
        my jset frameWidth 0
        my jset frameHeight 0
        my jset captionDx 0
        my jset captionDy 0
        my jset dx 0
        my jset dy 0
        my jset time 0
        my jset soundInterface {}
        my jset scaleProperties {}
        my jset animationBehaviorFactory {}
        my jset animationFactoryImageScaleUtil [::AnimationFactoryImageScaleUtil::getInstance]
        my jset animationFactorySpriteScaleUtil [::AnimationFactorySpriteScaleUtil::getInstance]
        
        
        
        
        
        
        
        
        
        
        my jset scaleProperties [::ScaleProperties::staticGet_instance]
        
        return
    }
    

    constructor {captionImage spriteMovieImage soundInterface frameWidth frameHeight captionDx captionDy dx dy time animationBehaviorFactory} {
        next
        my initFields_ImageCaptionIndexedAnimationFactory
        if {[expr {$animationBehaviorFactory eq [::AnimationBehaviorFactory::getInstance]}]} {
            ::ForcedLogUtil::log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" [self]
        }
        my jset captionImage $captionImage
        my jset spriteMovieImage $spriteMovieImage
        my jset frameWidth $frameWidth
        my jset frameHeight $frameHeight
        my jset captionDx $captionDx
        my jset captionDy $captionDy
        my jset dx $dx
        my jset dy $dy
        my jset time $time
        my jset soundInterface $soundInterface
        my jset animationBehaviorFactory $animationBehaviorFactory
    }
    

    method getInstance {instanceId} {
        set scaledImage [[my jget animationFactoryImageScaleUtil] createImage [my jget captionImage] [[my jget captionImage] getWidth] [[my jget captionImage] getHeight] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        set animationInterface [::ImageAnimation new $scaledImage [[my jget animationBehaviorFactory] getOrCreateInstance]]
        set sprite [[my jget animationFactorySpriteScaleUtil] createImage [my jget spriteMovieImage] [my jget frameWidth] [my jget frameHeight] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        set movieIndexedAnimationInterface [::SpriteIndexedAnimation new $sprite [my jget spriteMovieImage] [[::BasicColorUtil::getInstance] jget ZERO_ARRAY] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        set player [[my jget soundInterface] getPlayerP]
        if {[expr {$player eq {}}]} {
            error [jexception Exception "Sound Was not Initialized"]
        }
        return [::CaptionIndexedAnimation new $animationInterface $movieIndexedAnimationInterface $player [my jget captionDx] [my jget captionDy] [my jget dx] [my jget dy] [my jget time] [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
    

    method setInitialScale {scaleProperties} {
        my jset scaleProperties $scaleProperties
    }
}

namespace eval ::ImageCaptionIndexedAnimationFactory {
}


