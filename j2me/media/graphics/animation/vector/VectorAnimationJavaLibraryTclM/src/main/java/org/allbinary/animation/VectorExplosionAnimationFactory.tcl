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

oo::class create ::VectorExplosionAnimationFactory {
    superclass ::JObject
}

oo::define ::VectorExplosionAnimationFactory {
    method initFields_VectorExplosionAnimationFactory {} {
        my jset vectorExplosionGenerator {}
        my jset basicColor {}
        my jset animationBehaviorFactory {}
        my jset vectorExplosionGenerator [::VectorExplosionGenerator::getInstance]
        my jset basicColor [[::BasicColorFactory::getInstance] jget WHITE]
        
        return
    }
    

    constructor {basicColor animationBehaviorFactory} {
        next
        my initFields_VectorExplosionAnimationFactory
        my jset animationBehaviorFactory $animationBehaviorFactory
        my setBasicColorP $basicColor
    }
    

    method getInstanceAnimation {animationInterface} {
        set vectorRotationAnimationInterface $animationInterface
        set frame [$vectorRotationAnimationInterface getFrame]
        set framePoints [$vectorRotationAnimationInterface getPoints $frame]
        set points [[my jget vectorExplosionGenerator] getInstance $framePoints 6 [[my jget vectorExplosionGenerator] jget ROTATION]]
        return [::VectorRotationAnimation new $points [my getBasicColorP] [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
}

namespace eval ::VectorExplosionAnimationFactory {
}


