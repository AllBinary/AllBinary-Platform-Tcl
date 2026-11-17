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

oo::class create ::SimultaneousCompoundIndexAnimationInterfaceFactory {
    superclass ::JObject
}

oo::define ::SimultaneousCompoundIndexAnimationInterfaceFactory {
    method initFields_SimultaneousCompoundIndexAnimationInterfaceFactory {} {
        my jset basicAnimationInterfaceFactoryInterfaceArray {}
        my jset animationBehaviorFactory {}
        
        
        return
    }
    

    constructor {basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory} {
        next
        my initFields_SimultaneousCompoundIndexAnimationInterfaceFactory
        my jset basicAnimationInterfaceFactoryInterfaceArray $basicAnimationInterfaceFactoryInterfaceArray
        my jset animationBehaviorFactory $animationBehaviorFactory
    }
    

    method getInstance {instanceId} {
        set size [[my jget basicAnimationInterfaceFactoryInterfaceArray] length]
        set animationInterfaceArray [jarray $size {}]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $animationInterfaceArray set $index [[[my jget basicAnimationInterfaceFactoryInterfaceArray] get $index] getInstance $instanceId]
        }
        return [my getOrCreate $animationInterfaceArray]
    }
    

    method getOrCreate {animationInterfaceArray} {
        return [::SimultaneousCompoundIndexAnimation new $animationInterfaceArray [[my jget animationBehaviorFactory] getOrCreateInstance]]
    }
    

    method getBasicAnimationInterfaceFactoryInterfaceArray {} {
        return [my jget basicAnimationInterfaceFactoryInterfaceArray]
    }
    

    method setInitialScale {scaleProperties} {
    }
}

namespace eval ::SimultaneousCompoundIndexAnimationInterfaceFactory {
}


