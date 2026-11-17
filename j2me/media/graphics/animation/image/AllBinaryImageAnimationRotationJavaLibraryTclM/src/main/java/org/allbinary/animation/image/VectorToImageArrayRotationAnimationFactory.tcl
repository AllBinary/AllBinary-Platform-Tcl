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

oo::class create ::VectorToImageArrayRotationAnimationFactory {
    superclass ::BaseImageAnimationFactory
}

oo::define ::VectorToImageArrayRotationAnimationFactory {
    method initFields_VectorToImageArrayRotationAnimationFactory {} {
        my jset imageArray {}
        my jset angleIncrement 0
        my jset imageArray [::NullImage::staticGet_NULL_IMAGE_ARRAY]
        my jset angleIncrement 0
        return
    }
    

    constructor {vectorInfo basicColor animationBehaviorFactory} {
        next [[::AnimationFrameToImageUtil::getInstance] getInstanceTranslate [$vectorInfo getWidth] [$vectorInfo getHeight] [::VectorAnimation::createVectorAnimation [$vectorInfo getPoints] $basicColor [$animationBehaviorFactory getOrCreateInstance]]] [::PrimitiveIntUtil::getArrayInstance] 0 0 0 0 $animationBehaviorFactory
        my initFields_VectorToImageArrayRotationAnimationFactory
        my init
    }
    

    method init {} {
        set angleFactory [::AngleFactory::getInstance]
        my jset angleIncrement [expr {[$angleFactory jget TOTAL_ANGLE] / [[::GameConfigurationCentral::getInstance] getGameControlFidelity]}]
        my jset imageArray [[::ImageToRotationImageArrayUtil::getInstance] generate [my getImage] [my getAngleIncrement] [jint [$angleFactory jget TOTAL_ANGLE]]]
    }
    

    method getInstance {instanceId} {
        if {[expr {[expr {[[my jget animationFactoryInitializationVisitor] jget dx] != 0}] || [expr {[[my jget animationFactoryInitializationVisitor] jget dy] != 0}]}]} {
            return [::AdjustedImageArrayRotationAnimation new [my jget imageArray] [::AngleInfo::getInstance [jshort [my getAngleIncrement]]] [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]] [[my jget animationFactoryInitializationVisitor] jget dx] [[my jget animationFactoryInitializationVisitor] jget dy] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        } else {
            return [::AdjustedImageArrayRotationAnimation::createAnimation [my jget imageArray] [::AngleInfo::getInstance [jshort [my jget angleIncrement]]] [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]] [[my jget animationBehaviorFactory] getOrCreateInstance]]
        }
    }
    

    method getAngleIncrement {} {
        return [my jget angleIncrement]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::VectorToImageArrayRotationAnimationFactory {
}


