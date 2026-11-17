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

oo::class create ::SingletonAnimationInterfaceFactory {
    superclass ::JObject
}

oo::define ::SingletonAnimationInterfaceFactory {
    method initFields_SingletonAnimationInterfaceFactory {} {
        my jset animationInterface {}
        
        return
    }
    

    constructor {animationInterface} {
        next
        my initFields_SingletonAnimationInterfaceFactory
        my jset animationInterface $animationInterface
    }
    

    method getInstance {instanceId} {
        return [my jget animationInterface]
    }
    

    method getInstanceAnimation {animationInterface} {
        return [my jget animationInterface]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::SingletonAnimationInterfaceFactory {
}


