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

#TWB - Adjustments should be done in the resource creation and not at the animation level
oo::class create ::PooledImageArrayRotationAnimationFactory {
    superclass ::JObject
}

oo::define ::PooledImageArrayRotationAnimationFactory {
    method initFields_PooledImageArrayRotationAnimationFactory {} {
        my jset allBinaryImageRotationAnimationInfo {}
        my jset animationBehaviorFactory {}
        my jset allBinaryImageRotationAnimationInfo [[::NullUtil::getInstance] jget NULL_OBJECT]
        
        return
    }
    
    
    

    constructor {image width height dx dy angleIncrement animationBehaviorFactory} {
        next
        my initFields_PooledImageArrayRotationAnimationFactory
        my jset animationBehaviorFactory $animationBehaviorFactory
        set totalAngle [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]]
        set imageArray [[::ImageToRotationImageArrayUtil::getInstance] generate $image $angleIncrement $totalAngle]
        my jset allBinaryImageRotationAnimationInfo [::ImageArrayRotationAnimationInfo new $imageArray $angleIncrement $totalAngle $dx $dy]
    }
    

    method getInstance {instanceId} {
        return [::AdjustedImageArrayRotationAnimation::createAdjustedImageArrayRotationAnimationInfo [my jget allBinaryImageRotationAnimationInfo] [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::PooledImageArrayRotationAnimationFactory {
    proc createFactory {image animationBehaviorFactory} {
        set totalAngle [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]]
        set angleIncrement ([expr {$totalAngle / [[::GameConfigurationCentral::getInstance] getGameControlFidelity]}])
        return [::PooledImageArrayRotationAnimationFactory new $image [$image getWidth] [$image getHeight] [expr {-([expr {[$image getWidth] >> 2}])}] [expr {-([expr {[$image getHeight] >> 2}])}] $angleIncrement $animationBehaviorFactory]
    }
    proc createDXY {image dx dy animationBehaviorFactory} {
        set totalAngle [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]]
        set angleIncrement ([expr {$totalAngle / [[::GameConfigurationCentral::getInstance] getGameControlFidelity]}])
        return [::PooledImageArrayRotationAnimationFactory new $image [$image getWidth] [$image getHeight] $dx $dy $angleIncrement $animationBehaviorFactory]
    }
}


