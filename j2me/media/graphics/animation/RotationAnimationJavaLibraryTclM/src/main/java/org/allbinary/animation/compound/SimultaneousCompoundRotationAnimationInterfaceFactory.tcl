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
# package org.allbinary.animation.compound

oo::class create ::SimultaneousCompoundRotationAnimationInterfaceFactory {
    superclass ::CompoundAnimationInterfaceFactory
}

oo::define ::SimultaneousCompoundRotationAnimationInterfaceFactory {
    method initFields_SimultaneousCompoundRotationAnimationInterfaceFactory {} {
        return
    }
    

    constructor {basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory} {
        next $basicAnimationInterfaceFactoryInterfaceArray $animationBehaviorFactory
        my initFields_SimultaneousCompoundRotationAnimationInterfaceFactory
        if {[expr {$animationBehaviorFactory eq [::AnimationBehaviorFactory::getInstance]}]} {
            ::ForcedLogUtil::log "Using default AnimationBehaviorFactory with IndexedAnimationFactory" [self]
        }
    }
    

    method createArray {size} {
        return [jarray $size {}]
    }
    

    method createAnimation {animationInterfaceArray} {
        return [::SimultaneousCompoundRotationAnimation new $animationInterfaceArray [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
}

namespace eval ::SimultaneousCompoundRotationAnimationInterfaceFactory {
}


