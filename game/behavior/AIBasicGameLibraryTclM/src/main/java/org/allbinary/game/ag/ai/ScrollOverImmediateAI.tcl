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

oo::class create ::ScrollOverImmediateAI {
    superclass ::BasicAI
}

oo::define ::ScrollOverImmediateAI {
    method initFields_ScrollOverImmediateAI {} {
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_ScrollOverImmediateAI
    }
    

    method processAI {allBinaryLayerManager} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        set x [$ownerLayerInterface getXP]
        set y [$ownerLayerInterface getYP]
        set x2 [$ownerLayerInterface getX2]
        set y2 [$ownerLayerInterface getY2]
        set width [$ownerLayerInterface getWidth]
        set height [$ownerLayerInterface getHeight]
        set displayInfo [::DisplayInfoSingleton::getInstance]
        if {[expr {$x2 > [$displayInfo getLastWidth]}]} {
            $ownerLayerInterface setPosition 0 $y [$ownerLayerInterface getZP]
        }
        if {[expr {$y2 > [$displayInfo getLastHeight]}]} {
            $ownerLayerInterface setPosition $x 0 [$ownerLayerInterface getZP]
        }
        if {[expr {$x < 0}]} {
            $ownerLayerInterface setPosition [expr {[$displayInfo getLastWidth] - $width}] $y [$ownerLayerInterface getZP]
        }
        if {[expr {$y < 0}]} {
            $ownerLayerInterface setPosition $x [expr {[$displayInfo getLastHeight] - $height}] [$ownerLayerInterface getZP]
        }
    }
}

namespace eval ::ScrollOverImmediateAI {
}


