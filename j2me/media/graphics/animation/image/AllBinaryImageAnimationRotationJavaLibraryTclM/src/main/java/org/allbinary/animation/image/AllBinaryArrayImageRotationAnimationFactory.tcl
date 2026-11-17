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

oo::class create ::AllBinaryArrayImageRotationAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::AllBinaryArrayImageRotationAnimationFactory {
    method initFields_AllBinaryArrayImageRotationAnimationFactory {} {
        my jset imageArray {}
        my jset angleIncrement 0
        my jset imageArray [::NullImage::staticGet_NULL_IMAGE_ARRAY]
        
        return
    }
    
    
    

    constructor {image width height angleIncrement animationBehaviorFactory} {
        next $image [::PrimitiveIntUtil::getArrayInstance] $width $height 0 0 $animationBehaviorFactory
        my initFields_AllBinaryArrayImageRotationAnimationFactory
        my jset angleIncrement $angleIncrement
        my init
    }
    

    method init {} {
        my setImageArray [[::ImageToRotationImageArrayUtil::getInstance] generate [my getImage] [my getAngleIncrement] [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]]]
    }
    

    method initDXY {dx dy} {
        [my jget animationFactoryInitializationVisitor] jset dx $dx
        [my jget animationFactoryInitializationVisitor] jset dy $dy
        [my jget animationFactoryInitializationVisitor] jset originalDx $dx
        [my jget animationFactoryInitializationVisitor] jset originalDy $dy
    }
    

    method getInstance {instanceId} {
        set scaledImageArray [jarray [[my jget imageArray] length] {}]
        set size [$scaledImageArray length]
        set image [my getImage]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $scaledImageArray set $index [[my jget animationFactoryImageScaleUtil] createImage $image [$image getWidth] [$image getHeight] [[my jget scaleProperties] jget scaleWidth] [[my jget scaleProperties] jget scaleHeight]]
        }
        if {[expr {[expr {[[my jget animationFactoryInitializationVisitor] jget dx] != 0}] || [expr {[[my jget animationFactoryInitializationVisitor] jget dy] != 0}]}]} {
            [my jget animationFactoryImageScaleUtil] processAdjust [self]
            return [::AdjustedImageArrayRotationAnimation new $scaledImageArray [::AngleInfo::getInstance [jshort [my getAngleIncrement]]] [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]] [[my jget animationFactoryInitializationVisitor] jget dx] [[my jget animationFactoryInitializationVisitor] jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::ImageArrayRotationAnimation new $scaledImageArray [::AngleInfo::getInstance [jshort [my getAngleIncrement]]] [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
    }
    

    method setImageArray {imageArray} {
        my jset imageArray $imageArray
    }
    

    method getAngleIncrement {} {
        return [my jget angleIncrement]
    }
}

namespace eval ::AllBinaryArrayImageRotationAnimationFactory {
    proc createFactory {image dx dy} {
        set arrayImageRotationAnimationFactory [::AllBinaryArrayImageRotationAnimationFactory new $image [$image getWidth] [$image getHeight] [expr {[[::AngleFactory::getInstance] jget TOTAL_ANGLE] / [[::GameConfigurationCentral::getInstance] getGameControlFidelity]}] [::AnimationBehaviorFactory::getInstance]]
        $arrayImageRotationAnimationFactory initDXY $dx $dy
        return $arrayImageRotationAnimationFactory
    }
    proc createFactoryA {image dx dy angleIncrement} {
        set arrayImageRotationAnimationFactory [::AllBinaryArrayImageRotationAnimationFactory new $image [$image getWidth] [$image getHeight] $angleIncrement [::AnimationBehaviorFactory::getInstance]]
        $arrayImageRotationAnimationFactory initDXY $dx $dy
        return $arrayImageRotationAnimationFactory
    }
}


