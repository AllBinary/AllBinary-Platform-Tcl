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

oo::class create ::CompoundAnimationInterfaceFactory {
    superclass ::JObject
}

oo::define ::CompoundAnimationInterfaceFactory {
    method initFields_CompoundAnimationInterfaceFactory {} {
        my jset basicAnimationInterfaceFactoryInterfaceArrayP {}
        my jset animationBehaviorFactory {}
        
        
        return
    }
    

    constructor {basicAnimationInterfaceFactoryInterfaceArray animationBehaviorFactory} {
        next
        my initFields_CompoundAnimationInterfaceFactory
        my jset basicAnimationInterfaceFactoryInterfaceArrayP $basicAnimationInterfaceFactoryInterfaceArray
        my jset animationBehaviorFactory $animationBehaviorFactory
    }
    

    method getInstance {instanceId} {
        set size [[my jget basicAnimationInterfaceFactoryInterfaceArrayP] length]
        set animationInterfaceArray [my createArray $size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $animationInterfaceArray set $index [[[my jget basicAnimationInterfaceFactoryInterfaceArrayP] get $index] getInstance $instanceId]
        }
        return [my createAnimation $animationInterfaceArray]
    }
    

    method createArray {size} {
        return [[::NullAnimationFactory::getFactoryInstance] jget EMPTY_ARRAY]
    }
    

    method createAnimation {animationInterfaceArray} {
        return [[::NullAnimationFactory::getFactoryInstance] getInstance 0]
    }
    

    method getBasicAnimationInterfaceFactoryInterfaceArray {} {
        return [my jget basicAnimationInterfaceFactoryInterfaceArrayP]
    }
    

    method setInitialScale {scaleProperties} {
        set size [[my jget basicAnimationInterfaceFactoryInterfaceArrayP] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [[my jget basicAnimationInterfaceFactoryInterfaceArrayP] get $index] setInitialScale $scaleProperties
        }
    }
}

namespace eval ::CompoundAnimationInterfaceFactory {
}


