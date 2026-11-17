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

oo::class create ::IndependentVectorExplosionRotationAnimationFactory {
    superclass ::JObject
}

oo::define ::IndependentVectorExplosionRotationAnimationFactory {
    method initFields_IndependentVectorExplosionRotationAnimationFactory {} {
        my jset framePoints {}
        my jset vectorInfo {}
        my jset basicColor {}
        my jset vectorAnimationFactoryInterface {}
        my jset vectorExplosionGenerator {}
        my jset framePoints [[::NullUtil::getInstance] jget NULL_INT_ARRAY_ARRAY_ARRAY]
        
        
        
        my jset vectorExplosionGenerator [::VectorExplosionGenerator::getInstance]
        return
    }
    

    constructor {vectorInfo basicColor vectorAnimationFactoryInterface} {
        next
        my initFields_IndependentVectorExplosionRotationAnimationFactory
        my jset vectorInfo $vectorInfo
        my jset basicColor $basicColor
        my jset vectorAnimationFactoryInterface $vectorAnimationFactoryInterface
        my init
    }
    

    method init {} {
        my jset framePoints [[::VectorRotationGenerator::getInstance] getInstance [my jget vectorInfo]]
    }
    

    method getInstanceAnimation {animationInterface} {
        set frame 0
        if {[expr {$animationInterface ne {}}]} {
            set rotationAnimationInterface $animationInterface
            set frame [$rotationAnimationInterface getFrame]
        }
        set points [[my jget vectorExplosionGenerator] getInstance [[my jget framePoints] get $frame] 6 [[my jget vectorExplosionGenerator] jget ROTATION]]
        return [[my jget vectorAnimationFactoryInterface] getInstance $points [my jget basicColor]]
    }
}

namespace eval ::IndependentVectorExplosionRotationAnimationFactory {
}


