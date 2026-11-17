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

oo::class create ::ScrollOverAllowOutsideAtEndAI {
    superclass ::BasicAI
}

oo::define ::ScrollOverAllowOutsideAtEndAI {
    method initFields_ScrollOverAllowOutsideAtEndAI {} {
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_ScrollOverAllowOutsideAtEndAI
    }
    

    method processAI {allBinaryLayerManager} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        set x [$ownerLayerInterface getXP]
        set y [$ownerLayerInterface getYP]
        set width [$ownerLayerInterface getWidth]
        set height [$ownerLayerInterface getHeight]
        set displayInfo [::DisplayInfoSingleton::getInstance]
        if {[expr {$x > [$displayInfo getLastWidth]}]} {
            $ownerLayerInterface setPosition [expr {-$width}] $y [$ownerLayerInterface getZP]
        }
        if {[expr {$y > [$displayInfo getLastHeight]}]} {
            $ownerLayerInterface setPosition $x [expr {-$height}] [$ownerLayerInterface getZP]
        }
        if {[expr {$x < [expr {-$width}]}]} {
            $ownerLayerInterface setPosition [expr {[$displayInfo getLastWidth] + $width}] $y [$ownerLayerInterface getZP]
        }
        if {[expr {$y < [expr {-$height}]}]} {
            $ownerLayerInterface setPosition $x [expr {[$displayInfo getLastHeight] + $height}] [$ownerLayerInterface getZP]
        }
    }
}

namespace eval ::ScrollOverAllowOutsideAtEndAI {
}


