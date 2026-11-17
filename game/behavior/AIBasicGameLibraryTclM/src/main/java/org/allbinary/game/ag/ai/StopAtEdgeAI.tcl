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

oo::class create ::StopAtEdgeAI {
    superclass ::BasicAI
}

oo::define ::StopAtEdgeAI {
    method initFields_StopAtEdgeAI {} {
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_StopAtEdgeAI
    }
    

    method processAI {allBinaryLayerManager} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        set velocityInterfaceCompositeInterface ($ownerLayerInterface)
        set velocityProperties [$velocityInterfaceCompositeInterface getVelocityProperties]
        set x [$ownerLayerInterface getXP]
        set y [$ownerLayerInterface getYP]
        set x2 [$ownerLayerInterface getX2]
        set y2 [$ownerLayerInterface getY2]
        set width [$ownerLayerInterface getWidth]
        set height [$ownerLayerInterface getHeight]
        set displayInfo [::DisplayInfoSingleton::getInstance]
        if {[expr {[expr {$x2 + [[$velocityProperties getVelocityXBasicDecimalP] getScaled]}] > [$displayInfo getLastWidth]}]} {
            $ownerLayerInterface setPosition [expr {[$displayInfo getLastWidth] - $width}] $y [$ownerLayerInterface getZP]
            [$velocityProperties getVelocityYBasicDecimalP] setint 0
        }
        if {[expr {[expr {$y2 + [[$velocityProperties getVelocityYBasicDecimalP] getScaled]}] > [$displayInfo getLastHeight]}]} {
            $ownerLayerInterface setPosition $x [expr {[$displayInfo getLastHeight] - $height}] [$ownerLayerInterface getZP]
            [$velocityProperties getVelocityXBasicDecimalP] setint 0
        }
        if {[expr {[expr {$x + [[$velocityProperties getVelocityXBasicDecimalP] getScaled]}] < 0}]} {
            $ownerLayerInterface setPosition 0 $y [$ownerLayerInterface getZP]
            [$velocityProperties getVelocityYBasicDecimalP] setint 0
        }
        if {[expr {[expr {$y + [[$velocityProperties getVelocityYBasicDecimalP] getScaled]}] < 0}]} {
            $ownerLayerInterface setPosition $x 0 [$ownerLayerInterface getZP]
            [$velocityProperties getVelocityXBasicDecimalP] setint 0
        }
    }
}

namespace eval ::StopAtEdgeAI {
}


