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

oo::class create ::ScrollOverAtHalfAI {
    superclass ::BasicAI
}

oo::define ::ScrollOverAtHalfAI {
    method initFields_ScrollOverAtHalfAI {} {
        return
    }
    

    constructor {ownerLayerInterface gameInput} {
        next $ownerLayerInterface $gameInput
        my initFields_ScrollOverAtHalfAI
    }
    

    method processAI {allBinaryLayerManager} {
        set ownerLayerInterface [my getOwnerLayerInterface]
        set x [$ownerLayerInterface getXP]
        set y [$ownerLayerInterface getYP]
        set halfWidth [$ownerLayerInterface getHalfWidth]
        set halfHeight [$ownerLayerInterface getHalfHeight]
        set displayInfo [::DisplayInfoSingleton::getInstance]
        if {[expr {$x > [expr {[$displayInfo getLastWidth] - $halfWidth}]}]} {
            $ownerLayerInterface setPosition [jint [expr {$halfWidth + 1}]] $y [$ownerLayerInterface getZP]
        }
        if {[expr {$y > [expr {[$displayInfo getLastHeight] - $halfHeight}]}]} {
            $ownerLayerInterface setPosition $x [jint [expr {$halfHeight + 1}]] [$ownerLayerInterface getZP]
        }
        if {[expr {$x < [expr {-$halfWidth}]}]} {
            $ownerLayerInterface setPosition [expr {[$displayInfo getLastWidth] - $halfWidth}] $y [$ownerLayerInterface getZP]
        }
        if {[expr {$y < [expr {-$halfHeight}]}]} {
            $ownerLayerInterface setPosition $x [expr {[$displayInfo getLastHeight] - $halfHeight}] [$ownerLayerInterface getZP]
        }
    }
}

namespace eval ::ScrollOverAtHalfAI {
}


