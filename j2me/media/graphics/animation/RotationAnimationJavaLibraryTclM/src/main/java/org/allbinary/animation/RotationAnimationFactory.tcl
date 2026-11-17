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
# package org.allbinary.animation

oo::class create ::RotationAnimationFactory {
    superclass ::JObject
}

oo::define ::RotationAnimationFactory {
    method initFields_RotationAnimationFactory {} {
        my jset totalAngle 0
        my jset angleIncrement 0
        
        
        return
    }
    
    

    constructor {totalAngle angleIncrement} {
        next
        my initFields_RotationAnimationFactory
        my jset totalAngle $totalAngle
        my jset angleIncrement $angleIncrement
    }
    

    method getInstance {instanceId} {
        return [::NullRotationAnimation::createTotalAngle [::AngleInfo::getInstance [my jget angleIncrement]] [my jget totalAngle] [::AnimationBehavior::getInstance]]
    }
    

    method getInstanceAnimation {animationInterface} {
        return [::NullRotationAnimation::createTotalAngle [::AngleInfo::getInstance [my jget angleIncrement]] [my jget totalAngle] [::AnimationBehavior::getInstance]]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::RotationAnimationFactory {
    proc createFactory {} {
        set totalAngle [[::AngleFactory::getInstance] jget TOTAL_ANGLE]
        return [::RotationAnimationFactory new $totalAngle [jshort ([expr {$totalAngle / [[::GameConfigurationCentral::getInstance] getGameControlFidelity]}])]]
    }
}


