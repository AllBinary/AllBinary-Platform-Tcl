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

oo::class create ::CompoundIndexedAnimationInterfaceFactory {
    superclass ::CompoundAnimationInterfaceFactory
}

oo::define ::CompoundIndexedAnimationInterfaceFactory {
    method initFields_CompoundIndexedAnimationInterfaceFactory {} {
        return
    }
    

    constructor {basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory} {
        next $basicAnimationInterfaceFactoryInterfaceArray $animationBehaviorFactory
        my initFields_CompoundIndexedAnimationInterfaceFactory
    }
    

    method createArray {size} {
        return [jarray $size {}]
    }
    

    method createAnimation {animationArray} {
        return [::CompoundIndexedAnimation new $animationArray [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
}

namespace eval ::CompoundIndexedAnimationInterfaceFactory {
}


