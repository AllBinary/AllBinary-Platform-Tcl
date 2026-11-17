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

oo::class create ::VectorRotationAnimationInterfaceFactory {
    superclass ::JObject
}

oo::define ::VectorRotationAnimationInterfaceFactory {
    method initFields_VectorRotationAnimationInterfaceFactory {} {
        my jset currentPoints {}
        my jset basicColor {}
        my jset animationBehaviorFactory {}
        my jset currentPoints [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY_ARRAY]
        my jset basicColor [[::BasicColorFactory::getInstance] jget WHITE]
        
        return
    }
    

    constructor {currentPoints basicColor animationBehaviorFactory} {
        next
        my initFields_VectorRotationAnimationInterfaceFactory
        my jset currentPoints $currentPoints
        my setBasicColorP $basicColor
        my jset animationBehaviorFactory $animationBehaviorFactory
    }
    

    method getInstance {instanceId} {
        return [::VectorRotationAnimation new [my jget currentPoints] [my getBasicColorP] [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::VectorRotationAnimationInterfaceFactory {
}


