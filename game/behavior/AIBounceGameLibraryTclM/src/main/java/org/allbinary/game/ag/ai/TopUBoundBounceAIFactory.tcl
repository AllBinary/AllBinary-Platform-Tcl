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
# package org.allbinary.game.ag.ai

oo::class create ::TopUBoundBounceAIFactory {
    superclass ::JObject
}

oo::define ::TopUBoundBounceAIFactory {
    method initFields_TopUBoundBounceAIFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_TopUBoundBounceAIFactory
    }
    

    method getInstance {hashtable ownerLayerInterface gameInput} {
        set velocityInterfaceCompositeInterface $ownerLayerInterface
        set velocityInterface [$velocityInterfaceCompositeInterface getVelocityProperties]
        set maxDistancePerTick ([expr {[$velocityInterface getMaxForwardVelocity] >> [[$velocityInterface getVelocityXBasicDecimalP] getScaledFactor]}])
        set halfWidth [expr {[expr {[expr {[$ownerLayerInterface getWidth] * 2}] + $maxDistancePerTick}] + 1}]
        set halfHeight [expr {[expr {[expr {[$ownerLayerInterface getHeight] * 2}] + $maxDistancePerTick}] + 1}]
        set point [[::PointFactory::getInstance] createXY $halfWidth [jint [expr {$halfHeight + 60}]]]
        set displayInfo [::DisplayInfoSingleton::getInstance]
        set rectangle [::Rectangle new $point ([expr {[expr {[$displayInfo getLastWidth] - $halfWidth}] - [$point getX]}]) ([expr {[expr {[$displayInfo getLastHeight] - $halfHeight}] - [$point getY]}])]
        return [::BoundBounceAI new $ownerLayerInterface $gameInput [::TopULayerBounds new $rectangle] [::ReverseVelocityBoundsVisitor new $ownerLayerInterface]]
    }
}

namespace eval ::TopUBoundBounceAIFactory {
}


